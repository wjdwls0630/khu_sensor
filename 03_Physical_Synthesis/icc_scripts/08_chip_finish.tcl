#******************************************************************************
#**                            08_chip_finish                                **
#**                       additional decap/filler                            **
#**                            DRC & LVS                                     **
#**            Extract Delay(.sdf) & Parasitic Output(.dspf)                 **
#**                      Extract Netlist(.v) & GDSII                         **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                       08_chip_finish.tcl                              "
echo "                                                                       "
echo "***********************************************************************"

# Set Step
set step "08_chip_finish"

# source the user_design_setup & common_lib_setup
source ./icc_scripts/user_scripts/user_design_setup.tcl
source ./icc_scripts/common_lib_setup.tcl

# Clear existing mw library and re-make dir
set _mw_lib ./mw_db/${TOP_MODULE}_${step}
if {[file exist $_mw_lib]} {
	sh mv $_mw_lib ./mw_db/old/${TOP_MODULE}_${step}_${back}
}
copy_mw_lib -from ./mw_db/${TOP_MODULE}_07_route_opt -to $_mw_lib

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


# Read scenario file
remove_sdc
remove_scenario -all
sh sed -i 's/ ${STD_WST}/ ${STD_WST}.db:${STD_WST}/' $FUNC1_SDC
#sh sed -i '/set_max_fanout/d' $FUNC1_SDC
source $ICC_MCMM_SCENARIOS_FILE
set_active_scenario $CHIP_FINISH_SCN

# Optimization Common Session Options - set in all sessions
source ./icc_scripts/common_route_opt_env.tcl

#Source antenna rule
source $ANTENNA_RULE
report_antenna_rules

set_route_zrt_detail_options -antenna true

# Search & Repair
verify_zrt_route
route_zrt_detail -inc true -initial_drc_from_input true

# Connect Power & Grounding in extraction and update timing
derive_pg_connection -power_net  $MW_R_POWER_NET    -power_pin  $MW_POWER_PORT
derive_pg_connection -ground_net $MW_R_GROUND_NET   -ground_pin $MW_GROUND_PORT
derive_pg_connection -power_net  $MW_R_POWER_NET    -ground_net $MW_R_GROUND_NET -tie

# Intermediate Save
# Use timing driven SnR.
set_route_zrt_global_options -timing_driven true
set_route_zrt_track_options  -timing_driven true
set_route_zrt_detail_options -timing_driven true
save_mw_cel
puts "SEC_INFO: CEL was saved. You can open CEL with read_only !!"

# Running extraction and updating the timing
extract_rc -coupling_cap
update_timing

# Report
set REPORTS_STEP_DIR $REPORTS_DIR/${step}
if {[file exist $REPORTS_STEP_DIR]} {
	sh rm -rf $REPORTS_STEP_DIR
}
sh mkdir $REPORTS_STEP_DIR

set legalize_support_phys_only_cell true
create_qor_snapshot -show_all -significant_digits 4 -name $step
redirect -file $REPORTS_STEP_DIR/snap.rpt \
	{ report_qor_snapshot -name $step -save_as snap.rpt }
redirect -file $REPORTS_STEP_DIR/hfn.rpt { report_net_fanout -threshold 100 }
redirect -file $REPORTS_STEP_DIR/qor.rpt -tee \
	{ report_qor -scenario [all_scenarios] -significant_digits 4 }
redirect -file $REPORTS_STEP_DIR/physical.sum -tee { report_design -physical -nosplit }
redirect -file $REPORTS_STEP_DIR/vth_use.rpt -tee { report_threshold_voltage_group }
redirect -file $REPORTS_STEP_DIR/check_legality { check_legality -verbose }
redirect -file $REPORTS_STEP_DIR/constraints.rpt { report_constraint \
	-scenario [all_scenarios] -all_violators -nosplit -significant_digits 4 }
redirect -file $REPORTS_STEP_DIR/max_timing.rpt {
	report_timing -significant_digits 4 \
	-delay max -transition_time  -capacitance \
	-max_paths 100 -nets -input_pins -slack_greater_than 0.0 \
	-physical -attributes -nosplit -derate -crosstalk_delta -derate -path full_clock_expanded
}
redirect -file $REPORTS_STEP_DIR/min_timing.rpt {
	report_timing -significant_digits 4 \
	-delay min -transition_time  -capacitance \
	-max_paths 100 -nets -input_pins \
	-physical -attributes -nosplit -crosstalk_delta -derate -path full_clock_expanded
}
# To verify CRPR
#redirect -file $REPORTS_DIR/${step}/crpr.rpt { report_crpr }
# delete "snapshot" directory called by create_qor_snapshot command
sh rm -rf snapshot/
# Save
change_names -rule verilog -hier
set verilogout_no_tri true
save_mw_cel -as ${TOP_MODULE}

# Check LVS
verify_lvs -max_error 500

# Write outputs
write_verilog ./outputs/${TOP_MODULE}.vg \
	-no_corner_pad_cells -no_pad_filler_cells -diode_ports \
	-no_core_filler_cells -no_flip_chip_bump_cells -wire_declaration

write_verilog ./outputs/${TOP_MODULE}.sim.v \
	-no_corner_pad_cells -no_pad_filler_cells -diode_ports \
	-no_core_filler_cells -no_flip_chip_bump_cells -wire_declaration \
	-no_tap_cells -no_unconnected_cells

# It is impossible because layer.map file is damaged!
set_write_stream_options -child_depth 0 -map_layer $STREAM_OUT_MAP \
	-output_pin {geometry text} \
	-keep_data_type -max_name_length 128

write_stream -lib_name ./mw_db/${TOP_MODULE}_${step} -format gds -cells $TOP_MODULE \
	./outputs/${TOP_MODULE}.gds_depth0

set_write_stream_options -child_depth 30 -map_layer $STREAM_OUT_MAP \
	-output_pin {geometry text} \
	-keep_data_type -max_name_length 128

write_stream -lib_name ./mw_db/${TOP_MODULE}_${step} -format gds -cells $TOP_MODULE \
	./outputs/${TOP_MODULE}.${step}.gds_depth30

write_def -nondefault_rule -rows_tracks_gcells -vias -all_vias -components -pins -blockages \
	-regions_groups -specialnets -nets -diode_pins -output ./outputs/${TOP_MODULE}.def

write_sdf ./outputs/$TOP_MODULE.sdf
write_sdc ./outputs/$TOP_MODULE.sdc
write_parasitics -format SPEF -output ./outputs/${TOP_MODULE}.spef

remove_power_domain -all
ungroup -all -flatten -force
set_app_var verilogout_no_tri true
write_verilog -no_corner_pad_cells -no_pad_filler_cells -no_core_filler_cells \
	-no_flip_chip_bump_cells -no_cover_cells -diode_ports -output_net_name_for_tie \
	-pg_ports -no_tap_cells -no_chip_cells \
	-split_bus ./outputs/${TOP_MODULE}.lvs.v
#start_gui
exit
