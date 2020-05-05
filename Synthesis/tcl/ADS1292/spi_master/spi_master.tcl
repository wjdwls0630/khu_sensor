# Script file for constraining spi_master
echo "***********************************************************************"
echo "                                                                       "
echo "                           spi_master.tcl                              "
echo "                                                                       "
echo "***********************************************************************"

set design "spi_master"
set dir "ADS1292/spi_master/"

set_svf "${svf_path}${dir}${design}.svf"

define_design_lib khu_sensor_lib -path ./lib
analyze -format verilog "${src_path}ADS1292/${design}.v" -lib khu_sensor_lib
elaborate spi_master -lib khu_sensor_lib
current_design $design

source "${tcl_path}default_constraints.tcl"

set_clock_uncertainty -setup 0.1 [get_clocks clk]
set_clock_latency 1 [get_clocks clk]

compile_ultra -incremental

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"

source "${tcl_path}report.tcl"
