#******************************************************************************
#**                            07_route_opt                                  **
#**                      Optimization after Routing                          **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                          07_route_opt.tcl                              "
echo "                                                                       "
echo "***********************************************************************"

# Set Step
set step "route_opt"

# source the user_design_setup & common_lib_setup 
source ./icc_scripts/user_scripts/user_design_setup.tcl
source ./icc_scripts/common_lib_setup.tcl

# Clear existing mw library and re-make dir
set _mw_lib ./mw_db/${TOP_MODULE}_${step}
if {[file exist $_mw_lib]} {
	sh mv $_mw_lib ./mw_db/old/${TOP_MODULE}_${step}_${back}
}
copy_mw_lib -from ./mw_db/${TOP_MODULE}_route -to $_mw_lib

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

#Source antenna rule
source $ANTENNA_RULE
report_antenna_rules

set_route_zrt_detail_options -antenna true    
set_route_zrt_detail_options -default_gate_size 0.02    

#Source antenna rule
source $ANTENNA_RULE
report_antenna_rules

# To fix antenna violations
set_route_zrt_detail_options -antenna true

# Setting for Route Optimization
set_app_var enable_recovery_removal_arcs true
set_app_var timing_remove_clock_reconvergence_pessimism true

foreach_in_collection clock [all_clocks] {
	set clock_name [get_attr $clock name]
	puts "SEC_INFO: Working on clock: $clock_name"
	set clock_source [get_attr $clock sources -quiet]
	
	if { [sizeof_col $clock_source] > 0 } {
		if { ![info exists found($clock_name)] } {
			set_propagated_clock [get_attr $clock sources -quiet]
			puts "Internal clock. Propagating."
		}
	} else {
		puts "External clock. Not propagating."
	}
}

# Set false path over 2ns path
# Same as detect_longnet it samsung013 aux 
if { $HOLD_FIX == "true" } {
	set_fix_hold [all_clocks]
	set_fix_hold_options -default
} else {
	remove_attribute [all_clocks] fix_hold
}

#Inout optimization
if { !$INOUT_OPT } {
	set_false_path -from [all_inputs]
	set_false_path -to [all_outputs]
}

# Running extraction and updating the timing
extract_rc -coupling_cap
update_timing

#Route optimization
route_opt \
	-skip_initial_routei \
	-effort medium \
	-xtalk_reduction

# incremental route optimization
route_opt -incremental

# Intermediate Save
save_mw_cel -as 01_before_shield
puts "SEC_INFO: CEL was saved. You can open CEL with read_only !!"

# Shielding
create_zrt_shield -with ground $MW_R_GROUND_NET -ignore_shielding_net_pins true
set_route_zrt_common_options -reshield_modified_nets reshield

# Set variable after shielding
set_extraction_options -virtual_shield_extraction FALSE

# Search & Repair
verify_zrt_route
route_zrt_detail -inc true -initial_drc_from_input true

# incremental route optimization 2
route_opt -incremental -size_only

# Use non-timing driven Duo. If not, runtime will be increased.
set_route_zrt_global_options -timing_driven false
set_route_zrt_track_options  -timing_driven false
set_route_zrt_detail_options -timing_driven false

# Insert duovia
insert_zrt_redundant_vias

# To fix antenna violations
set_route_zrt_detail_options -antenna true -insert_diodes_during_routing true \
	-diode_libcell_names diode_cell_hd 

# Use timing driven SnR. 
set_route_zrt_global_options -timing_driven true
set_route_zrt_track_options  -timing_driven true
set_route_zrt_detail_options -timing_driven true

# Search & Repair
verify_zrt_route
route_zrt_detail -inc true -initial_drc_from_input true

# Connect Power & Grounding in extraction and update timing
derive_pg_connection -power_net  $MW_R_POWER_NET    -power_pin  $MW_POWER_PORT
derive_pg_connection -ground_net $MW_R_GROUND_NET   -ground_pin $MW_GROUND_PORT
derive_pg_connection -power_net  $MW_R_POWER_NET    -ground_net $MW_R_GROUND_NET -tie

# Intermediate Save
save_mw_cel
puts "SEC_INFO: CEL was saved. You can open CEL with read_only !!"

# Running extraction and updating the timing
extract_rc -coupling_cap
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
report_zrt_shield -with_ground $MW_R_GROUND_NET -output $REPORTS_DIR/${step}.shield.ratio.rpt
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
