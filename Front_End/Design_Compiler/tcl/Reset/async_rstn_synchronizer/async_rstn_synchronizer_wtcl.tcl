# Script file for constraining async_rst_n_synchronizer
set design "async_rstn_synchronizer"
set dir "Reset/async_rstn_synchronizer/"

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
set clk_main_period 10
source "${tcl_path}default_constraints.tcl"

set_resistance 0 [get_nets o_RSTN] 
set_load 0 [get_nets o_RSTN]
remove_output_delay [get_ports o_RSTN]
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
