###################################################################

# Created by write_sdc on Wed May  6 18:44:45 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_fanout 6 [current_design]
set_max_area 1.6e+07
set_driving_cell -lib_cell ivtd1_hd [get_ports i_CLK]
set_driving_cell -lib_cell ivtd1_hd [get_ports i_RSTN]
set_driving_cell -lib_cell ivtd1_hd [get_ports i_CLK_HALF]
set_driving_cell -lib_cell ivtd1_hd [get_ports UART_RXD]
set_driving_cell -lib_cell ivtd1_hd [get_ports MPR121_SCL]
set_driving_cell -lib_cell ivtd1_hd [get_ports MPR121_SDA]
set_driving_cell -lib_cell ivtd1_hd [get_ports ADS1292_MISO]
set_driving_cell -lib_cell ivtd1_hd [get_ports ADS1292_DRDY]
set_disable_timing [get_ports i_RSTN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports CLK_OUT]
set_load -pin_load 0.01035 [get_ports CLK_HALF_OUT]
set_load -pin_load 0.01035 [get_ports UART_TXD]
set_load -pin_load 0.01035 [get_ports MPR121_SCL]
set_load -pin_load 0.01035 [get_ports MPR121_SDA]
set_load -pin_load 0.01035 [get_ports ADS1292_SCLK]
set_load -pin_load 0.01035 [get_ports ADS1292_MOSI]
set_load -pin_load 0.01035 [get_ports ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports ADS1292_START]
set_load -pin_load 0.01035 [get_ports ADS1292_CSN]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK_HALF]  -name clk  -period 40  -waveform {0 20}
set_clock_latency 3  [get_clocks clk]
set_clock_uncertainty -setup 0.3  [get_clocks clk]
set_clock_transition -max -rise 0.5 [get_clocks clk]
set_clock_transition -max -fall 0.5 [get_clocks clk]
set_output_delay -clock clk  -max 4.24  [get_ports MPR121_SCL]
set_output_delay -clock clk  -max 4.24  [get_ports MPR121_SDA]
set_output_delay -clock clk  -max 4.24  [get_ports CLK_OUT]
set_output_delay -clock clk  -max 4.24  [get_ports CLK_HALF_OUT]
set_output_delay -clock clk  -max 4.24  [get_ports UART_TXD]
set_output_delay -clock clk  -max 4.24  [get_ports ADS1292_SCLK]
set_output_delay -clock clk  -max 4.24  [get_ports ADS1292_MOSI]
set_output_delay -clock clk  -max 4.24  [get_ports ADS1292_RESET]
set_output_delay -clock clk  -max 4.24  [get_ports ADS1292_START]
set_output_delay -clock clk  -max 4.24  [get_ports ADS1292_CSN]
