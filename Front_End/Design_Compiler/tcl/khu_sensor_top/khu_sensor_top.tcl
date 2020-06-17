# Script file for constraining khu_sensor_pad
set design "khu_sensor_top"
set dir "khu_sensor_top/"

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog -rtl "${src_path}${design}.v"

current_design $design
# The link command locates the reference for each cell in the design.
link

set clk_main_period 10
source "${tcl_path}default_constraints.tcl"

echo "***********************************************************************"
echo "                                                                       "
echo "                    Apply ${design}_constraints.tcl                    "
echo "                                                                       "
echo "***********************************************************************"

set_false_path -to [get_cells async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg]
set_disable_timing [get_cells async_rstn_glitch_synchronizer]
propagate_constraints -design uart_controller
propagate_constraints -design sensor_core
propagate_constraints -design ads1292_filter
propagate_constraints -design ads1292_controller
propagate_constraints -design mpr121_controller

set_dont_touch async_rstn_glitch_synchronizer

set_dont_touch divider_by_2
set_dont_touch mpr121_controller
set_dont_touch ads1292_controller
set_dont_touch uart_controller
set_dont_touch sensor_core
set_dont_touch ads1292_filter

echo "***********************************************************************"
echo "                                                                       "
echo "                       compile_ultra ${design}                         "
echo "                                                                       "
echo "***********************************************************************"

compile_ultra -no_autoungroup -incremental

echo "***********************************************************************"
echo "                                                                       "
echo "                    write ${design} output file                        "
echo "                                                                       "
echo "***********************************************************************"

change_names -rules verilog -hierarchy -verbose
write_file -format verilog -output "${netlist_path}${dir}${t_w_path}${design}.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"

source "${tcl_path}report.tcl"
