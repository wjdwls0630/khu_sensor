# Script file for constraining float_adder
set design "float_adder"
set dir "ADS1292/ADS1292_Filter/float_adder/"

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

define_design_lib khu_sensor_lib -path ./lib
analyze -format verilog "${src_path}ADS1292/ADS1292_Filter/Float/${design}.v" -lib khu_sensor_lib
elaborate float_adder -lib khu_sensor_lib

current_design $design
# The link command locates the reference for each cell in the design.
link

source "${tcl_path}default_constraints.tcl"

echo "***********************************************************************"
echo "                                                                       "
echo "                    Apply ${design}_constraints.tcl                    "
echo "                                                                       "
echo "***********************************************************************"
set clk_main_period 10
create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
set_dont_touch_network [get_clocks clk]  
set_input_delay -max 0.31 [all_inputs] -clock $clk_name
set_output_delay -max 0.14 [all_outputs] -clock $clk_name
remove_input_delay [get_ports i_CLK]
remove_input_delay [get_ports i_RST]
set_cost_priority -delay
set_fix_hold [get_clocks clk]
set timing_disable_clock_gating_checks true
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
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"

source "${tcl_path}report.tcl"
