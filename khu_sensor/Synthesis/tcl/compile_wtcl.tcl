echo "***********************************************************************"
echo "                                                                       "
echo "                           compile_wtcl.tcl                            "
echo "                                                                       "
echo "***********************************************************************"
source "${tcl_path}read.tcl"
source "${tcl_path}default_constraints.tcl"

# ADS1292

set_svf "${svf_path}ADS1292/spi_master/spi_master.svf"
read_file -format ddc ${ddc_path}ADS1292/spi_master/spi_master.ddc
source "${tcl_path}ADS1292/spi_master/spi_master.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design spi_master_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ads1292_controller/ads1292_controller.svf"
read_file -format ddc ${ddc_path}ADS1292/ads1292_controller/ads1292_controller.ddc
source "${tcl_path}ADS1292/ads1292_controller/ads1292_controller.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design ads1292_controller_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

# ADS1292_Filter

set_svf "${svf_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/converter_f2i/converter_f2i.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design converter_f2i_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/converter_i2f/converter_i2f.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design converter_i2f_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/float_adder/float_adder.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_adder/float_adder.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/float_adder/float_adder.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design float_adder_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/float_multiplier/float_multiplier.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design float_multiplier_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/iir_lpf/iir_lpf.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design iir_lpf_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/iir_hpf/iir_hpf.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design iir_hpf_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/iir_notch/iir_notch.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design iir_notch_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"

set_svf "${svf_path}ADS1292/ADS1292_Filter/ads1292_filter/ads1292_filter.svf"
read_file -format ddc ${ddc_path}ADS1292/ADS1292_Filter/ads1292_filter/ads1292_filter.ddc
source "${tcl_path}ADS1292/ADS1292_Filter/ads1292_filter/ads1292_filter.wtcl"
optimize_registers
compile_ultra
change_names -rules verilog -hierarchy -verbose
set design ads1292_filter_wtcl
write_file -format ddc -hierarchy -output "${ddc_path}${dir}${design}.ddc"
source "${tcl_path}report.tcl"
