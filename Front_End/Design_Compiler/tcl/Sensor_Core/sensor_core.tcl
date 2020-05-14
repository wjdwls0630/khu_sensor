# Script file for constraining sensor_core
set design "sensor_core"
set dir "Sensor_Core/"
set timing_disable_clock_gating_checks true

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog "${src_path}${dir}${design}.v"

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

# Here

echo "***********************************************************************"
echo "                                                                       "
echo "                       compile_ultra ${design}                         "
echo "                                                                       "
echo "***********************************************************************"

compile_ultra -no_autoungroup

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
