# Characterize and write_script for all modules

echo "***********************************************************************"
echo "                                                                       "
echo "                        characterize.tcl                               "
echo "                                                                       "
echo "***********************************************************************"

# ADS1292
current_design ads1292_controller
characterize spi_master
current_design spi_master
write_script > "${tcl_path}/ADS1292/spi_master/spi_master.wtcl
# make top

# ADS1292_Filter
current_design ads1292_filter
characterize convert_f2i
current_design convert_f2i
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/convert_f2i/convert_f2i.wtcl

current_design ads1292_filter
characterize convert_i2f
current_design convert_i2f
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/convert_i2f/convert_i2f.wtcl

current_design ads1292_filter
characterize float_adder
current_design float_adder
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/float_adder/float_adder.wtcl

current_design ads1292_filter
characterize float_multiplier
current_design float_multiplier
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.wtcl

current_design ads1292_filter
characterize iir_lpf
current_design iir_lpf
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.wtcl

current_design ads1292_filter
characterize iir_hpf
current_design iir_hpf
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.wtcl

current_design ads1292_filter
characterize iir_notch
current_design iir_notch
write_script > "${tcl_path}/ADS1292/ADS1292_Filter/iir_notch/iir_notch.wtcl

# make top
