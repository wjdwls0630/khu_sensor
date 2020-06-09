###################################################################

# Created by write_sdc on Tue Jun  9 04:33:27 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_disable_timing [get_ports i_RSTN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports UART_TXD]
set_load -pin_load 0.01035 [get_ports MPR121_SCL_OUT]
set_load -pin_load 0.01035 [get_ports MPR121_SDA_OUT]
set_load -pin_load 0.01035 [get_ports MPR121_SCL_EN]
set_load -pin_load 0.01035 [get_ports MPR121_SDA_EN]
set_load -pin_load 0.01035 [get_ports ADS1292_SCLK]
set_load -pin_load 0.01035 [get_ports ADS1292_MOSI]
set_load -pin_load 0.01035 [get_ports ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports ADS1292_START]
set_load -pin_load 0.01035 [get_ports ADS1292_CSN]
set_max_fanout 1 [get_ports i_RSTN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
create_generated_clock [get_pins divider_by_2/o_CLK_DIV_2]  -name clk_half  -source [get_pins divider_by_2/i_CLK]  -divide_by 2
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_clock_transition -max -rise 1.4 [get_clocks clk_half]
set_clock_transition -min -rise 1.4 [get_clocks clk_half]
set_clock_transition -max -fall 1.9 [get_clocks clk_half]
set_clock_transition -min -fall 1.9 [get_clocks clk_half]
set_false_path   -from [get_ports i_RSTN]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_load 0  [get_nets w_CLOCK_HALF]
set_resistance 0  [get_nets w_CLOCK_HALF]
