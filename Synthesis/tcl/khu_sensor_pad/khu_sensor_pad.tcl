# Script file for constraining khu_sensor_pad
echo "***********************************************************************"
echo "                                                                       "
echo "                         khu_sensor_pad.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

set design "khu_sensor_top"

set_svf "${svf_path}${dir}${design}.svf"

read_file -format verilog "${src_path}${design}.v"

source "${tcl_path}default_constraints.tcl"
optimize_registers
compile_ultra

current_design $design
# The link command locates the reference for each cell in the design.
link

write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"

set design "khu_sensor_pad"
set dir "khu_sensor_pad"

set_svf "${svf_path}${dir}${design}.svf"

read_file -format verilog "${src_path}${design}.v"

source "${tcl_path}default_constraints.tcl"

# input delay
# By input_pad constraint
set_input_delay -max 4.24 -clock $clk_name [all_inputs]
remove_input_delay -clock $clk_name0 [all_inputs]

# output delay
# By output_pad constraint
set_output_delay -max 4.24 -clock $clk_name [all_outputs]

# Apply default drive strengths and typical loads # for I/O ports
set_driving_cell -lib_cell ivtd1_hd [all_inputs]
set_max_area 16000000

optimize_registers
compile_ultra

current_design $design
# The link command locates the reference for each cell in the design.
link

change_names -rules verilog -hierarchy -verbose
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${design}.v"
write_sdf "${db_path}${dir}${design}.sdf"
write_sdc "${db_path}${dir}${design}.sdc"
write_parasitics -output "${db_path}${dir}${design}_parasitics"

source "${tcl_path}report.tcl"
