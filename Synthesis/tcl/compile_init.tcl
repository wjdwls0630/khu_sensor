# Initial compile
echo "***********************************************************************"
echo "                                                                       "
echo "                           compile_init.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

# ADS1292
#source "${tcl_path}ADS1292/spi_master/spi_master.tcl"
#source "${tcl_path}ADS1292/ads1292_controller/ads1292_controller.tcl"

# ADS1292_Filter
#source "${tcl_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.tcl"
#source "${tcl_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.tcl"

source "${tcl_path}ADS1292/ADS1292_Filter/float_adder/float_adder.tcl"

#source "${tcl_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.tcl"

#source "${tcl_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.tcl"
#source "${tcl_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.tcl"
#source "${tcl_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.tcl"
#source "${tcl_path}ADS1292/ADS1292_Filter/ads1292_filter/ads1292_filter.tcl"


#source "${tcl_path}Sensor_Core/sensor_core.tcl"
