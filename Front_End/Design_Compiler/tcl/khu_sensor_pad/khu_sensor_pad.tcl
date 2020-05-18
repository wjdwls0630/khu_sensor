# Script file for constraining khu_sensor_pad
set design "khu_sensor_pad"
set dir "khu_sensor_pad/"

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog "${src_path}${design}.v"

current_design $design
# The link command locates the reference for each cell in the design.
link

source "${tcl_path}default_constraints.tcl"

echo "***********************************************************************"
echo "                                                                       "
echo "                    Apply ${design}_constraints.tcl                    "
echo "                                                                       "
echo "***********************************************************************"

# clk up!
set clk_period 10
create_clock -name $clk_name -period $clk_period [get_ports i_CLK]
set_dont_touch_network [get_clocks clk]

#set_dont_touch divider_by_2
#set_dont_touch mpr121_controller/i2c_master
#set_dont_touch mpr121_controller
#set_dont_touch ads1292_controller/spi_master
#set_dont_touch ads1292_controller
#set_dont_touch uart_controller/uart_tx
#set_dont_touch uart_controller/uart_rx
#set_dont_touch uart_controller
#set_dont_touch sensor_core
#set_dont_touch ads1292_filter

# input delay
# By input_pad constraint
set_input_delay -max 4.24 -clock $clk_name [all_inputs]
remove_input_delay -clock $clk_name [all_inputs]

# output delay
# By output_pad constraint
set_output_delay -max 4.24 -clock $clk_name [all_outputs]

# Apply default drive strengths and typical loads # for I/O ports
set_driving_cell -lib_cell ivtd1_hd [all_inputs]
set_max_area 16000000

echo "***********************************************************************"
echo "                                                                       "
echo "                       compile_ultra ${design}                         "
echo "                                                                       "
echo "***********************************************************************"

compile_ultra

echo "***********************************************************************"
echo "                                                                       "
echo "                    write ${design} output file                        "
echo "                                                                       "
echo "***********************************************************************"

change_names -rules verilog -hierarchy -verbose
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"

source "${tcl_path}report.tcl"
