#******************************************************************************
# call setup.tcl
#**********************************************i*******************************
source ./tcl/synopsys_dc_sam013.setup.tcl
#******************************************************************************
#**                              Read Design                                 **
#******************************************************************************
#******************************************************************************
# command
# analyze
# elaborate
# read_file
#******************************************************************************
#******************************************************************************
#Read _verilog check syntax error(HDL Compiler), and translation to gate level design
#based on GTECH
#**********************************************i*******************************
#******************************************************************************
# analyze : enter the default library or specified library (create .mr, .syn, .pvl)
# elaborate : elaborate contents in library
#**********************************************i*******************************
# specify library path
# By default, the analyze command stores all output in the work library(current working directory)
# current working directory = directory where invoke Design compiler
# make directory to store output files from analyze command(.mr, .syn, .pvl)
define_design_lib khu_sensor_lib -path ./lib 

# MPR121
#read_verilog ./Source/MPR121/i2c_master.v
#read_verilog ./Source/MPR121/mpr121_controller.v

# ADS1292
#******************************************************************************
# Parameterized module in design compiler
# When using read_file command, DC performs both analysis and elaboration.
# Since elaboration called by read_file command was tying the parameter to the default value 
# for the child, thus DC couldn't find a same(appropriate) instance in work directory 
# when the parent module was instantiating the child module(different parameter).
# However, If we analyze parameterized module first, and make lib files in working directory
# (especially, in order to cleaning my work space, I define lib directory for storing output files)
# DC will search link library we defined (*, $target_library) when read_file command is executed. 
#**********************************************i*******************************
analyze -format verilog ./Source/ADS1292/spi_master.v -lib khu_sensor_lib
read_verilog ./Source/ADS1292/ads1292_controller.v

# ADS1292_Filter
read_verilog ./Source/ADS1292/ADS1292_Filter/Float/converter_f2i.v
read_verilog ./Source/ADS1292/ADS1292_Filter/Float/converter_i2f.v
read_verilog ./Source/ADS1292/ADS1292_Filter/Float/float_adder.v
read_verilog ./Source/ADS1292/ADS1292_Filter/Float/float_multiplier.v
read_verilog ./Source/ADS1292/ADS1292_Filter/IIR_LPF/iir_lpf.v
read_verilog ./Source/ADS1292/ADS1292_Filter/IIR_Notch/iir_notch.v
read_verilog ./Source/ADS1292/ADS1292_Filter/IIR_HPF/iir_hpf.v
read_verilog ./Source/ADS1292/ADS1292_Filter/ads1292_filter.v

# ALTPLL
#read_verilog ./Source/ALTPLL/my_pll.v

# Sensor_Core
read_verilog ./Source/Sensor_Core/sensor_core.v

# UART_Controller
analyze -format verilog ./Source/UART_Controller/uart_rx.v -lib khu_sensor_lib
analyze -format verilog ./Source/UART_Controller/uart_tx.v -lib khu_sensor_lib
read_verilog ./Source/UART_Controller/uart_controller.v

# TOP
read_verilog ./Source/khu_sensor_top.v

# PAD
read_verilog ./Source/khu_sensor_pad.v

#******************************************************************************
# set top and link
#**********************************************i*******************************
set top khu_sensor_pad
current_design $top
link
