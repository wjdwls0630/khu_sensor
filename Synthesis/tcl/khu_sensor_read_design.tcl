define_design_lib khu_sensor_lib -path ./lib

# MPR121
#read_file -format verilog ./src/MPR121/i2c_master.v
#read_file -format verilog ./src/MPR121/mpr121_controller.v

# ADS1292
analyze -format verilog ./src/ADS1292/spi_master.v -lib khu_sensor_lib
read_file -format verilog ./src/ADS1292/ads1292_controller.v

# ADS1292_Filter
read_file -format verilog ./src/ADS1292/ADS1292_Filter/Float/converter_f2i.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/Float/converter_i2f.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/Float/float_adder.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/Float/float_multiplier.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/IIR_LPF/iir_lpf.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/IIR_Notch/iir_notch.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/IIR_HPF/iir_hpf.v
read_file -format verilog ./src/ADS1292/ADS1292_Filter/ads1292_filter.v

# ALTPLL
#read_file -format verilog ./src/ALTPLL/my_pll.v

# Sensor_Core
read_file -format verilog ./src/Sensor_Core/sensor_core.v

# UART_Controller
analyze -format verilog ./src/UART_Controller/uart_rx.v -lib khu_sensor_lib
analyze -format verilog ./src/UART_Controller/uart_tx.v -lib khu_sensor_lib
read_file -format verilog ./src/UART_Controller/uart_controller.v

# TOP
read_file -format verilog ./src/khu_sensor_top.v

# PAD
read_file -format verilog ./src/khu_sensor_pad.v

#******************************************************************************
# set top and link
#**********************************************i*******************************
set top khu_sensor_pad
current_design $top
# The link command locates the reference for each cell in the design.
link
