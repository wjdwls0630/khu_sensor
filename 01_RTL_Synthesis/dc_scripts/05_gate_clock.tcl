#******************************************************************************
#**                             05_gate_clock                                **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                         05_gate_clock.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

# Set Constraints for clock gating
set_clock_Gating_style \
  -sequential_cell latch \
  -control_point before \
  -control_signal scan_enable \
  -minimum_bitwidth 8 \
  -max_fanout 128 \
  -positive_edge_logic {integrated}

set pwr_hdlc_split_cg_cells true
set hdlin_no_group_register true
set power_cg_auto_identify true
# power_cg_designware is not recommended because -gate_clock option will insert
# clock gate automatically in designware module
#set power_cg_designware true
set compile_clock_gating_through_hierarchy true

# Set Step
set step "05_gate_clock"

compile_ultra -incremental -gate_clock

source ./dc_scripts/common_reports.tcl
