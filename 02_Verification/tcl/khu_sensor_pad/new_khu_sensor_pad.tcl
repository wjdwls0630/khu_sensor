remove_container -all 
set design "khu_sensor_pad"
set dir "khu_sensor_pad/"
#set synopsys_auto_setup true

set_svf -append { ../01_RTL_Synthesis/svf/khu_sensor_pad.svf}

create_container ref
read_verilog -container ref -libname WORK -01 ${src_path}${design}.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/khu_sensor_top.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ads1292_controller.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/spi_master.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/ads1292_filter.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/Float/converter_f2i.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/Float/converter_i2f.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/Float/float_adder.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/Float/float_multiplier.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/IIR_HPF/iir_hpf.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/IIR_LPF/iir_lpf.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/ADS1292/ADS1292_Filter/IIR_Notch/iir_notch.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/MPR121/i2c_master.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/MPR121/mpr121_controller.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/Sensor_Core/sensor_core.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/Divider_by_2/divider_by_2.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/Reset/async_rst_synchronizer.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/Reset/async_rstn_glitch_synchronizer.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/Reset/async_rstn_synchronizer.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/UART_Controller/uart_controller.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/UART_Controller/uart_rx.v
read_verilog -container ref -libname WORK -01 ../01_RTL_Synthesis/Source/UART_Controller/uart_tx.v

set hdlin_warn_on_mismatch_message FMR_ELAB-147

set_top ref:/WORK/khu_sensor_pad
set_reference_design ref:/WORK/$design

create_container impl
read_verilog -container impl -netlist ${netlist_path}${design}.vg
set_top impl:/WORK/khu_sensor_pad


#NEED TO FIX SOMEWHERE -YH



#link impl:/WORK/$design

set_implementation_design impl:/WORK/$design

set_compare_rule impl:/WORK/$design                          \
                 -from {\(.*\)_reg\([0-9]*\)_\([0-9][0-9]*\)A} \
                 -to   {\1_reg\2[\3]}
# set_compare_point commands for mapping the comparable design objects changes
# their instance name or flattened hierarchy path name
echo "***********************************************************************"
echo "                                                                       "
echo "                            match  ${design}                          "
echo "                                                                       "
echo "***********************************************************************"
match

echo "***********************************************************************"
echo "                                                                       "
echo "                            verify  ${design}                          "
echo "                                                                       "
echo "***********************************************************************"

# verification
# Since we have already linked the design pairs,
# use -nolink option when performing verification
# However, for now, -nolink is obsolete, it is default
if {[verify] != 1} {
   diagnose
   report_failing_points
   source "${tcl_path}report_fail.tcl"
} else {
   source "${tcl_path}report_pass.tcl"
}
source "${tcl_path}report_default.tcl"
