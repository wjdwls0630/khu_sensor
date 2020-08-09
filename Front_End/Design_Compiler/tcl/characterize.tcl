# Characterize and write_script for all modules

echo "***********************************************************************"
echo "                                                                       "
echo "                        characterize.tcl                               "
echo "                                                                       "
echo "***********************************************************************"

# Reset
current_design iir_lpf
characterize -constraint async_rstn_synchronizer
current_design async_rstn_synchronizer
write_script > "${tcl_path}Reset/async_rstn_synchronizer/async_rstn_synchronizer.wtcl"

current_design iir_lpf
characterize -constraint async_rst_synchronizer
current_design async_rst_synchronizer
write_script > "${tcl_path}Reset/async_rst_synchronizer/async_rst_synchronizer.wtcl"

current_design khu_sensor_top
characterize -constraint async_rstn_glitch_synchronizer
current_design async_rstn_glitch_synchronizer
write_script > "${tcl_path}Reset/async_rstn_glitch_synchronizer/async_rstn_glitch_synchronizer.wtcl"

# MPR121
current_design mpr121_controller
characterize -constraint i2c_master
current_design i2c_master
write_script > "${tcl_path}MPR121/i2c_master/i2c_master.wtcl"

current_design khu_sensor_top
characterize -constraint mpr121_controller
current_design mpr121_controller
write_script > "${tcl_path}MPR121/mpr121_controller/mpr121_controller.wtcl"

# ADS1292
current_design ads1292_controller
characterize -constraint spi_master
current_design spi_master
write_script > "${tcl_path}ADS1292/spi_master/spi_master.wtcl"

current_design khu_sensor_top
characterize -constraint ads1292_controller
current_design ads1292_controller
write_script > "${tcl_path}ADS1292/ads1292_controller/ads1292_controller.wtcl"

# ADS1292_Filter 
current_design iir_lpf
characterize -constraint add
current_design float_adder
write_script > "${tcl_path}ADS1292/ADS1292_Filter/float_adder/float_adder.wtcl"

current_design iir_lpf
characterize -constraint mult_1
current_design float_multiplier
write_script > "${tcl_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.wtcl"

current_design ads1292_filter
characterize -constraint iir_lpf
current_design iir_lpf
write_script > "${tcl_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.wtcl"

current_design ads1292_filter
characterize -constraint iir_hpf
current_design iir_hpf
write_script > "${tcl_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.wtcl"

current_design ads1292_filter
characterize -constraint iir_notch
current_design iir_notch
write_script > "${tcl_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.wtcl"

current_design ads1292_filter
characterize -constraint converter_i2f
current_design converter_i2f
write_script > "${tcl_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.wtcl"

current_design ads1292_filter
characterize -constraint converter_f2i
current_design converter_f2i
write_script > "${tcl_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.wtcl"

current_design khu_sensor_top
characterize -constraint ads1292_filter
current_design ads1292_filter
write_script > "${tcl_path}ADS1292/ADS1292_Filter/ads1292_filter/ads1292_filter.wtcl"

# Sensor_Core
current_design khu_sensor_top
characterize -constraint sensor_core
current_design sensor_core
write_script > "${tcl_path}Sensor_Core/sensor_core.wtcl"


# UART_Controller
current_design uart_controller
characterize -constraint uart_rx
current_design uart_rx
write_script > "${tcl_path}UART_Controller/uart_rx/uart_rx.wtcl"

current_design uart_controller
characterize -constraint uart_tx
current_design uart_tx
write_script > "${tcl_path}UART_Controller/uart_tx/uart_tx.wtcl"

current_design khu_sensor_top
characterize -constraint uart_controller
current_design uart_controller
write_script > "${tcl_path}UART_Controller/uart_controller/uart_controller.wtcl"

# Divider_by_2
current_design khu_sensor_top
characterize -constraint divider_by_2
current_design divider_by_2
write_script > "${tcl_path}Divider_by_2/divider_by_2.wtcl"

# khu_sensor_top
current_design khu_sensor_pad
characterize -constraint khu_sensor_top
current_design khu_sensor_top
write_script > "${tcl_path}khu_sensor_top/khu_sensor_top.wtcl"

current_design khu_sensor_pad
write_script > "${tcl_path}khu_sensor_pad/khu_sensor_pad.wtcl"
