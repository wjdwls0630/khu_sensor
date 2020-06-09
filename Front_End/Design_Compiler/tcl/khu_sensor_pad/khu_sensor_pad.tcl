# Script file for constraining khu_sensor_pad
set design "khu_sensor_pad"
set dir "khu_sensor_pad/"

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog -rtl "${src_path}${design}.v"

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

set_dont_touch khu_sensor_top

set_max_area 16000000

# Interconnect net between PAD and virtual Port does not exist in reality. But DC calculates
# total capacitance of interconnect net and PAD's output for wire delay.
# Thus, For calculating accurate delay, we should constraint its resistance and load manually.
# Samsung provides sh script file for solving this problem, however, dc no longer supports 
# executing sh script file.
set port_nets [get_nets -of_object [get_ports *]]
foreach_in_collection each_net $port_nets {
	set net_name [get_object_name $each_net]
	echo $net_name
	set_load 0.0 [get_nets $net_name]
	set_resistance 0 [get_nets $net_name]
	set_dont_touch [get_nets $net_name]
}
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
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}_hierarchy.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"

source "${tcl_path}report.tcl"
