echo "***********************************************************************"
echo "                                                                       "
echo "                           compile_wtcl.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

# MPR121
set_svf "${svf_path}MPR121/i2c_master/i2c_master.svf"
read_file -format ddc ${ddc_path}MPR121/i2c_master/i2c_master.ddc
source "${tcl_path}MPR121/i2c_master/i2c_master.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design i2c_master_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}MPR121/mpr121_controller/mpr121_controller.svf"
read_file -format ddc ${ddc_path}MPR121/mpr121_controller/mpr121_controller.ddc
source "${tcl_path}MPR121/mpr121_controller/mpr121_controller.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design mpr121_controller_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

# ADS1292

set_svf "${svf_path}ADS1292/spi_master/spi_master.svf"
read_file -format ddc ${ddc_path}ADS1292/spi_master/spi_master.ddc
source "${tcl_path}ADS1292/spi_master/spi_master.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
#set design spi_master_wtcl
#write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
#source "${tcl_path}report.tcl"

#set_svf "${svf_path}ADS1292/ads1292_controller/ads1292_controller.svf"
#read_file -format ddc ${ddc_path}ADS1292/ads1292_controller/ads1292_controller.ddc
#source "${tcl_path}ADS1292/ads1292_controller/ads1292_controller.wtcl"
#optimize_registers
#compile_ultra
#change_names -rules verilog -hierarchy -verbose
#set design ads1292_controller_wtcl
#write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
#source "${tcl_path}report.tcl"

# ADS1292_Filter

set_svf "${svf_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design converter_f2i_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design converter_i2f_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design converter_i2f_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/float_adder/float_adder.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_adder/float_adder.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/float_adder/float_adder.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design float_adder_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design float_adder_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_adder/float_adder.ddc
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.ddc
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design iir_lpf_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_adder/float_adder.ddc
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.ddc
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design iir_notch_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_adder/float_adder.ddc
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.ddc
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design iir_hpf_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

# Sensor_Core
set_svf "${svf_path}Sensor_Core/sensor_core.svf"
read_file -format ddc ${ddc_path}Sensor_Core/sensor_core.ddc
source "${tcl_path}Sensor_Core/sensor_core.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design sensor_core_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

# UART_Controller
set_svf "${svf_path}UART_Controller/uart_rx/uart_rx.svf"
read_file -format ddc ${ddc_path}UART_Controller/uart_rx/uart_rx.ddc
source "${tcl_path}UART_Controller/uart_rx/uart_rx.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design uart_rx_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}UART_Controller/uart_tx/uart_tx.svf"
read_file -format ddc ${ddc_path}UART_Controller/uart_tx/uart_tx.ddc
source "${tcl_path}UART_Controller/uart_tx/uart_tx.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design uart_tx_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}UART_Controller/uart_controller/uart_controller.svf"
read_file -format ddc ${ddc_path}UART_Controller/uart_controller/uart_controller.ddc
source "${tcl_path}UART_Controller/uart_controller/uart_controller.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design uart_controller_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

# khu_sensor_pad

set_svf "${svf_path}khu_sensor_pad/khu_sensor_top.svf"
read_file -format ddc ${ddc_path}khu_sensor_pad/khu_sensor_top.ddc
source "${tcl_path}khu_sensor_pad/khu_sensor_top.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design khu_sensor_top_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"

set_svf "${svf_path}khu_sensor_pad/khu_sensor_pad.svf"
read_file -format ddc ${ddc_path}khu_sensor_pad/khu_sensor_pad.ddc
source "${tcl_path}khu_sensor_pad/khu_sensor_pad.wtcl"
optimize_registers
compile_ultra -retime -gate_clock -incremental
change_names -rules verilog -hierarchy -verbose
set design khu_sensor_pad_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"

source "${tcl_path}report.tcl"
