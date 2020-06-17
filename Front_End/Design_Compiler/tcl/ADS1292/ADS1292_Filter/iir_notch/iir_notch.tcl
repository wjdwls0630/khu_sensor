# Script file for constraining iir_notch
set design "iir_notch"
set dir "ADS1292/ADS1292_Filter/iir_notch/"

echo "***********************************************************************"
echo "                                                                       "
echo "                           iir_notch.tcl                               "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog -rtl "${src_path}ADS1292/ADS1292_Filter/IIR_Notch/${design}.v"

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

set_false_path -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_disable_timing [get_cells async_rstn_synchronizer]
set_false_path -to [get_cells async_rst_synchronizer/o_RST_reg]
set_disable_timing [get_cells async_rst_synchronizer]

set_dont_touch async_rstn_synchronizer
set_dont_touch async_rst_synchronizer
set_dont_touch float_adder
set_dont_touch float_multiplier
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
