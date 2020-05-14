# Script file for constraining ads1292_filter
echo "***********************************************************************"
echo "                                                                       "
echo "                         ads1292_filter.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

set design "ads1292_filter"
set dir "ADS1292/ADS1292_Filter/ads1292_filter/"

set_svf "${svf_path}${dir}${design}.svf"

read_file -format verilog "${src_path}ADS1292/ADS1292_Filter/${design}.v"

current_design $design
# The link command locates the reference for each cell in the design.
link

source "${tcl_path}default_constraints.tcl"

set_clock_uncertainty -setup 0.2 [get_clocks clk]
set_clock_latency 2 [get_clocks clk]

compile_ultra

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"

source "${tcl_path}report.tcl"
