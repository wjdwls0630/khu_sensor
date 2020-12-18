#******************************************************************************
#**                             05_gate_clock                                **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                         05_gate_clock.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set step "05_gate_clock" 

# Set Constraints for clock gating
set_clock_gating_style \
  -sequential_cell latch \
  -control_point before \
  -control_signal scan_enable \
  -minimum_bitwidth 4 \
  -max_fanout 128 \
  -positive_edge_logic {integrated}

set pwr_hdlc_split_cg_cells true
# The hdlin_no_group_register is not recommended. This variable will be obsolte.
#set hdlin_no_group_register true
set power_cg_auto_identify true
# power_cg_designware is not recommended because -gate_clock option will insert
# clock gate automatically in designware module
#set power_cg_designware true
set compile_clock_gating_through_hierarchy true

compile_ultra -incremental -gate_clock

# The CLK pin of Clock gating cell(clk_gate*) must note deemed as sync point during CTS
# Granted, ICC does not consider the CLK pin as sync point, 
# rather cosider the CK pin of gated register. If this is the case, 
# we should place clock gating cell and gated register closely in order to 
# preventing clock gating cell from setup violation between EN to CK.
# Set max_delay 0 from the ENCLK pin of Clock gating cell. 

#set_auto_disable_drc_nets -clock false
set gate_cell_list [get_cells -hierarchical "clk_gate*"]
foreach_in_collection cell $gate_cell_list {
   set cell_name [get_object_name $cell]
   set_max_delay 0 -from [get_pins $cell_name/ENCLK] 
}
#set_auto_disable_drc_nets -clock true 

source ./dc_scripts/common_reports.tcl
# clock gating report
report_clock_gating -style > ${REPORTS_DIR}/${step}/report_clock_gating.rpt
report_clock_gating_check -significant_digits 4 >> ${REPORTS_DIR}/${step}/report_clock_gating.rpt
report_clock_gating -structure >> ${REPORTS_DIR}/${step}/report_clock_gating.rpt
# Check EN path delay, if there is enough EN setup margin, the ICC can re-optimize 
# gated register's timing(or fix violation), even if the decrease in clock network delay by CTS. 
# However, if there is very low EN setup margin, re-optimization is not easy in post-layout stage. 
# Also, if the EN path delay is long and there is no enough margin, due to CTS buffer delay, 
# even EN setup violation can readily occur.
# Hence, if the EN slack is small, we should remove the clock-gating.
report_timing -max_paths 10 -to [get_pins -hierarchical "clk_gate*"] \
	> ${REPORTS_DIR}/${step}/report_clock_gating_max_paths.rpt

# Remove clock gating from the cells that have small margin.
#echo "***********************************************************************"
#echo "                                                                       "
#echo "                       remove clock gating                             "
#echo "                                                                       "
#echo "***********************************************************************"

# Recompile
# compile_ultra -incremental

#source ./dc_scripts/common_reports.tcl
# clock gating report
#report_clock_gating -style > ${REPORTS_DIR}/${step}/${corner}/report_clock_gating.rpt
#report_clock_gating_check -significant_digits 4 >> ${REPORTS_DIR}/${step}/${corner}/report_clock_gating.rpt
#report_clock_gating -structure >> ${REPORTS_DIR}/${step}/${corner}/report_clock_gating.rpt
