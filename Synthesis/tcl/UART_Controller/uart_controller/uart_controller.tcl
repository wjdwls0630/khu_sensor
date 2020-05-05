# Script file for constraining uart_controller
echo "***********************************************************************"
echo "                                                                      "
echo "                         uart_controller.tcl                          "
echo "                                                                      "
echo "***********************************************************************"

set design "uart_controller"
set dir "UART_Controller/uart_controller/"

set_svf "${svf_path}${dir}${design}.svf"

read_file -format verilog "${src_path}UART_Controller/${design}.v"

current_design $design
# The link command locates the reference for each cell in the design.
link

source "${tcl_path}default_constraints.tcl"

set_clock_uncertainty -setup 0.15 [get_clocks clk]
set_clock_latency 1.5 [get_clocks clk]

compile_ultra

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"

source "${tcl_path}report.tcl"
