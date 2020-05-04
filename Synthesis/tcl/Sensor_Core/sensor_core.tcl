# Script file for constraining sensor_core
echo "***********************************************************************"
echo "                                                                       "
echo "                           sensor_core.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

set design "sensor_core"
set dir "Sensor_Core/"

current_design sensor_core
source "${tcl_path}default_constraints.tcl"

set_svf "${svf_path}${dir}${design}.svf"


optimize_registers
compile_ultra 

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"
 
source "${tcl_path}report.tcl"
