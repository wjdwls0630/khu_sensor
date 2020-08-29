#******************************************************************************
#**                           03_place_opt                                   **
#**                    Placement and Optimization                            **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                           03_place_opt.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

# Set Step
set step "place_opt"

# source the user_design_setup & common_lib_setup 
source ./icc_scripts/user_scripts/user_design_setup.tcl
source ./icc_scripts/common_lib_setup.tcl

# Clear existing mw library and re-make dir
set _mw_lib ./mw_db/${TOP_MODULE}_${step}
if {[file exist $_mw_lib]} {
	sh mv $_mw_lib ./mw_db/old/${TOP_MODULE}_${step}_${back}
}
copy_mw_lib -from ./mw_db/${TOP_MODULE}_powerplan -to $_mw_lib

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

echo "***********************************************************************"
echo "                                                                       "
echo "    Check consistency between the Milkyway library and the TLUPlus     "   
echo "                                                                       "
echo "***********************************************************************"
check_tlu_plus_files


#Fixing the locations of the hard macros
    if { [all_macro_cells] != "" } {
         set_dont_touch_placement [all_macro_cells]
    }

#Inout optimization
if { !$INOUT_OPT } {
	set_false_path -from [all_inputs]
	set_false_path -to [all_outputs]
}


# Optimization Common Session Options - set in all sessions
source ./icc_scripts/common_place_opt_env.tcl 

source ./icc_scripts/rules/shield_130nm_rule.tcl

set_clock_tree_options -clock_trees [all_clocks] \
	-routing_rule shield_130nm_rule -layer_list "MET3 MET4"


# Unplace all standard cells except for tap and well_edge cells
remove_placement -object_type standard_cell

# Improved congestion analysis by using Global Route info 
if { $GL_BASED_PLACE } {
	set placer_enable_enhanced_router true
	set placer_enable_high_effort_congestion true
} else {
	set placer_enable_enhanced_router false
	set placer_enable_high_effort_congestion false
}

# Placement Optimization
if {$LEAKAGE_POWER_PLACE} {
	#Optimize Power 
	if {$ICC_STRATEGY == "ttr" } {
		place_opt -effort low -power
	}
	if {$ICC_STRATEGY == "qor" } {
             place_opt -congestion -area_recovery -effort $qor_effort -power
        }
} else {
	#Default place_opt
	if {$ICC_STRATEGY == "ttr" } {
		place_opt -effort low
	}
	if {$ICC_STRATEGY == "qor" } {
		place_opt -congestion -area_recovery -effort $qor_effort
        }
}

# Connect Power & Grounding in extraction and update timing
derive_pg_connection -power_net $MW_R_POWER_NET -power_pin  $MW_POWER_PORT
derive_pg_connection -ground_net $MW_R_GROUND_NET -ground_pin $MW_GROUND_PORT
derive_pg_connection -power_net $MW_R_POWER_NET -ground_net $MW_R_GROUND_NET -tie

# Generate global zroute based congestion map
if { $GEN_GL_CONG_MAP } {
	route_zrt_global -congestion_map_only true
}

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
	report_timing -significant_digits 4 \
	-delay max -transition_time  -capacitance \
	-max_paths 100 -nets -input_pins -slack_lesser_than 0.01 \
	-physical -attributes -nosplit -derate
}
redirect -file $REPORTS_DIR/${step}.min.timing.rpt { 
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
close_mw_lib

# Reset sdc file for applying sdc
sh rm -f $FUNC1_SDC
sh cp ${FUNC1_SDC}.bak ${FUNC1_SDC}

#exit

