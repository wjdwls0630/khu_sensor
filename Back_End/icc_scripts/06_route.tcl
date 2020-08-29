#******************************************************************************
#**                               06_route                                   **
#**                        Clock and Signal Routing                          **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                            06_route.tcl                               "
echo "                                                                       "
echo "***********************************************************************"

# Set Step
set step "route"

# source the user_design_setup & common_lib_setup 
source ./icc_scripts/user_scripts/user_design_setup.tcl
source ./icc_scripts/common_lib_setup.tcl

# Clear existing mw library and re-make dir
set _mw_lib ./mw_db/${TOP_MODULE}_${step}
if {[file exist $_mw_lib]} {
	sh mv $_mw_lib ./mw_db/old/${TOP_MODULE}_${step}_${back}
}
copy_mw_lib -from ./mw_db/${TOP_MODULE}_clock_opt_post_cts -to $_mw_lib

# Open Library and Cell

set_mw_technology_file -technology $TECH_FILE $_mw_lib
set_mw_lib_reference $_mw_lib -mw_reference_library $MW_REF_LIB_DIRS
open_mw_lib $_mw_lib
remove_mw_cel \
	[remove_from_collection [get_mw_cel *] [get_mw_cel $TOP_MODULE]] \
	-all_versions -all_view -verbose
open_mw_cel $TOP_MODULE
link
current_design $TOP_MODULE

# Setting up Time constraints
remove_ideal_network -all

# Read scenario file 
# TODO make scenario!
# On behalf of making scenarino, source sdc file

remove_sdc
remove_scenario -all
#source $ICC_MCMM_SCENARIOS_FILE
#set_active_scenario $FP_SCN

sh sed -i 's/ ${STD_WST}/ ${STD_WST}.db:${STD_WST}/' $FUNC1_SDC
# Instead of scenario 
source $FUNC1_SDC
set_tlu_plus_files \
	-max_tluplus $TLUP_MAX_FILE \
	-min_tluplus $TLUP_MIN_FILE \
	-tech2itf_map $MAP_FILE

# If you have scenario file, use this block instead of above one.
# Read scenario file
#if { $CLOCK_OPT_CTS_SCN_READ_AGAIN } {
#	remove_sdc 
#	remove_scenario -all
#	source $ICC_MCMM_SCENARIOS_FILE
#}
#    set_active_scenario $CLOCK_OPT_CTS_SCN

echo "***********************************************************************"
echo "                                                                       "
echo "    Check consistency between the Milkyway library and the TLUPlus     "   
echo "                                                                       "
echo "***********************************************************************"
check_tlu_plus_files

# Optimization Common Session Options - set in all sessions
source ./icc_scripts/common_route_opt_env.tcl 
set_route_zrt_detail_options -default_gate_size 0.02    

#Source antenna rule
source $ANTENNA_RULE
report_antenna_rules

# To fix antenna violations
set_route_zrt_detail_options -antenna true

# Route clock nets
route_zrt_group -all_clock_nets -reuse_existing_global_route true

## Unset Antenna rule (ekyoo)
set_route_zrt_detail_options -antenna false 

## Initial Route
route_opt -initial_route_only

# Use non-timing driven SnR and Duo. If not, runtime will be increased.
set_route_zrt_global_options -timing_driven false
set_route_zrt_track_options  -timing_driven false
set_route_zrt_detail_options -timing_driven false

## Search & Repair
verify_zrt_route
route_zrt_detail -inc true -initial_drc_from_input true

#remove_net_routing [get_nets TIELOMTR_U233_net ]
#route_zrt_group -nets [get_nets TIELOMTR_U233_net ]

# To fix antenna violations
source $ANTENNA_RULE
report_antenna_rules
set_route_zrt_detail_options -antenna true
verify_zrt_route
route_zrt_detail -inc true -initial_drc_from_input true

# Insert duovia
insert_zrt_redundant_vias

# To fix antenna violations
source $ANTENNA_RULE
report_antenna_rules
set_route_zrt_detail_options -antenna true
verify_zrt_route
route_zrt_detail -inc true -initial_drc_from_input true

# remove std filler
remove_stdcell_filler -stdcell

# Intermediate Save
set_route_zrt_global_options -timing_driven true
set_route_zrt_track_options  -timing_driven true
set_route_zrt_detail_options -timing_driven true
save_mw_cel
puts "SEC_INFO: CEL was saved. You can open CEL with read_only !!"

# Running extraction and updating the timing
extract_rc
update_timing

# Report
set legalize_support_phys_only_cell true
create_qor_snapshot -show_all -significant_digits 4 -name $step
redirect -file $REPORTS_DIR/${step}.snap.rpt \
	{ report_qor_snapshot -name $step -save_as $step.snap.rpt }
redirect -file $REPORTS_DIR/${step}.hfn.rpt { report_net_fanout -threshold 100 }
redirect -file $REPORTS_DIR/${step}.qor.rpt -tee \
	{ report_qor -significant_digits 4 }
redirect -file $REPORTS_DIR/${step}.physical.sum -tee { report_design -physical -nosplit }
redirect -file $REPORTS_DIR/${step}.vth_use.rpt -tee { report_threshold_voltage_group }
redirect -file $REPORTS_DIR/${step}.check_legality { check_legality -verbose }
redirect -file $REPORTS_DIR/${step}.constraints.rpt { report_constraint \
	-all_violators -nosplit -significant_digits 4 }
redirect -file $REPORTS_DIR/${step}.max.timing.rpt {
	report_timing $REPORTS_DIR/${step}.max.timing.rpt -significant_digits 4 \
	-delay max -transition_time  -capacitance \
	-max_paths 100 -nets -input_pins -slack_lesser_than 0.01 \
	-physical -attributes -nosplit -derate
}
redirect -file $REPORTS_DIR/${step}.min.timing.rpt{ 
	report_timing -significant_digits 4 \
	-delay min -transition_time  -capacitance \
	-max_paths 100 -nets -input_pins \
	-physical -attributes -nosplit -crosstalk_delta -derate -path full_clock_expanded
}

# Save
change_names -rule verilog -hier
set verilogout_no_tri true
save_mw_cel -as ${TOP_MODULE}

# close lib
#close_mw_lib

# Reset sdc file for applying sdc
sh rm -f $FUNC1_SDC
sh cp ${FUNC1_SDC}.bak ${FUNC1_SDC}

#exit
