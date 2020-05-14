echo "***********************************************************************"
echo "                                                                       "
echo "                           compile_wtcl.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

<<<<<<< HEAD
# MPR121
set dir MPR121/i2c_master/
set design i2c_master
set_svf "${svf_path}${t_w_path}${dir}${design}.svf"
read_file -format verilog ${netlist_path}${dir}tcl/${design}.vg
=======
set design "float_adder"
set dir "ADS1292/ADS1292_Filter/float_adder/"
set_svf "${svf_path}${dir}${t_w_path}${design}.svf"
read_file -format verilog ${netlist_path}${dir}tcl/${design}.vg
source "${tcl_path}default_constraints.tcl"
>>>>>>> jin
source "${tcl_path}${dir}${design}.wtcl"
optimize_registers
compile_ultra -no_autoungroup -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"
source "${tcl_path}report.tcl"
<<<<<<< HEAD

# if khu_sensor_pad, compile_ultra autoungroup
set dir MPR121/i2c_master/
set design i2c_master
set_svf "${svf_path}${t_w_path}${dir}${design}.svf"
read_file -format verilog ${netlist_path}${dir}tcl/${design}.vg
source "${tcl_path}${dir}${design}.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"
source "${tcl_path}report.tcl"
=======
# MPR121
#set dir MPR121/i2c_master/
#set design i2c_master
#set_svf "${svf_path}${dir}${t_w_path}${design}.svf"
#read_file -format verilog ${netlist_path}${dir}tcl/${design}.vg
#source "${tcl_path}${dir}${design}.wtcl"
#optimize_registers
#compile_ultra -no_autoungroup -retime -gate_clock -incremental
#change_names -rules verilog -hierarchy -verbose
#write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}.vg"
#write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
#write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
#write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"
#source "${tcl_path}report.tcl"

# if khu_sensor_pad, compile_ultra autoungroup
#set dir MPR121/i2c_master/
#set design i2c_master
#set_svf "${svf_path}${dir}${t_w_path}${design}.svf"
#read_file -format verilog ${netlist_path}${dir}tcl/${design}.vg
#source "${tcl_path}${dir}${design}.wtcl"
#optimize_registers
#compile_ultra -retime -gate_clock -incremental
#change_names -rules verilog -hierarchy -verbose
#write_file -format verilog -hierarchy -output "${netlist_path}${dir}${t_w_path}${design}.vg"
#write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
#write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
#write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"
#source "${tcl_path}report.tcl"
>>>>>>> jin
