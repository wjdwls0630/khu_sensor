# Retiming compile clock_gating
echo "***********************************************************************"
echo "                                                                       "
echo "                           compile_wtcl.tcl                            "
echo "                                                                       "
echo "***********************************************************************"


# MPR121
source "${tcl_path}MPR121/i2c_master/i2c_master_wtcl.tcl"
source "${tcl_path}MPR121/mpr121_controller/mpr121_controller_wtcl.tcl"

# ADS1292
source "${tcl_path}ADS1292/spi_master/spi_master_wtcl.tcl"
source "${tcl_path}ADS1292/ads1292_controller/ads1292_controller_wtcl.tcl"

# ADS1292_Filter
source "${tcl_path}ADS1292/ADS1292_Filter/float_adder/float_adder_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f_wtcl.tcl"
source "${tcl_path}ADS1292/ADS1292_Filter/ads1292_filter/ads1292_filter_wtcl.tcl"

# Sensor_Core
source "${tcl_path}Sensor_Core/sensor_core_wtcl.tcl"

# Uart_Controller
source "${tcl_path}UART_Controller/uart_rx/uart_rx_wtcl.tcl"
source "${tcl_path}UART_Controller/uart_tx/uart_tx_wtcl.tcl"
source "${tcl_path}UART_Controller/uart_controller/uart_controller_wtcl.tcl"

# divider_by_2
source "${tcl_path}Divider_by_2/divider_by_2_wtcl.tcl"

# khu_sensor_top, khu_sensor_pad
source "${tcl_path}khu_sensor_top/khu_sensor_top_wtcl.tcl"
source "${tcl_path}khu_sensor_pad/khu_sensor_pad_wtcl.tcl"
