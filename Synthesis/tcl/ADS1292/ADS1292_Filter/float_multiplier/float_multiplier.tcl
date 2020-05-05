# Script file for constraining float_adder
echo "***********************************************************************"
echo "                                                                       "
echo "                        float_multiplier.tcl                           "
echo "                                                                       "
echo "***********************************************************************"

set design "float_multiplier"
set dir "ADS1292/ADS1292_Filter/float_multiplier/"

set_svf "${svf_path}${dir}${design}.svf"

read_file -format verilog "${src_path}ADS1292/ADS1292_Filter/Float/${design}.v"

current_design $design
# The link command locates the reference for each cell in the design.
link

source "${tcl_path}default_constraints.tcl"

set_clock_uncertainty -setup 0.1 [get_clocks clk]
set_clock_latency 1 [get_clocks clk]

compile_ultra

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"

source "${tcl_path}report.tcl"
