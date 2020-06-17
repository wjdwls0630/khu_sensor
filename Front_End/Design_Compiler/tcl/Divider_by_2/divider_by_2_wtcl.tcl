# Script file for constraining divider_by_2
set design "divider_by_2"
set dir "Divider_by_2/"

echo "***********************************************************************"
echo "                                                                       "
echo "                        ${design}_wtcl.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog -netlist ${netlist_path}${dir}tcl/${design}.vg

current_design $design
link
echo "***********************************************************************"
echo "                                                                       "
echo "                          Apply ${design}.wtcl                         "
echo "                                                                       "
echo "***********************************************************************"
source "${tcl_path}${dir}${design}.wtcl"
remove_attribute [current_design] dont_touch
set clk_main_period 10
source "${tcl_path}default_constraints.tcl"
remove_output_delay [get_ports o_CLK_DIV_2]

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
source "${tcl_path}report.tcl"
