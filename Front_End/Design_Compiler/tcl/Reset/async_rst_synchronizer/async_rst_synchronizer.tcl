# Script file for constraining async_rst_n_synchronizer
set design "async_rst_synchronizer"
set dir "Reset/async_rst_synchronizer/"

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

define_design_lib khu_sensor_lib -path ./lib
analyze -format verilog  "${src_path}Reset/${design}.v" -lib khu_sensor_lib
elaborate $design -lib khu_sensor_lib

current_design $design
# The link command locates the reference for each cell in the design.
#link

set clk_main_period 10
source "${tcl_path}default_constraints.tcl"

echo "***********************************************************************"
echo "                                                                       "
echo "                    Apply ${design}_constraints.tcl                    "
echo "                                                                       "
echo "***********************************************************************"

set_resistance 0 [get_nets o_RST] 
set_load 0 [get_nets o_RST]
remove_output_delay [get_ports o_RST]
echo "***********************************************************************"
echo "                                                                       "
echo "                       compile_ultra ${design}                         "
echo "                                                                       "
echo "***********************************************************************"

compile_ultra -only_design_rule -incremental

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