# Script file for constraining i2c_master
echo "***********************************************************************"
echo "                                                                       "
echo "                           i2c_master.tcl                              "
echo "                                                                       "
echo "***********************************************************************"

set design "i2c_master"
set dir "MPR121/i2c_master/"

set_svf "${svf_path}${dir}${design}.svf"

read_file -format verilog "${src_path}MPR121/${design}.v"

current_design $design
# The link command locates the reference for each cell in the design.
link

source "${tcl_path}default_constraints.tcl"

optimize_registers
compile_ultra

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"

source "${tcl_path}report.tcl"
