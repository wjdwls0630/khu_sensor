###################################################################

# Created by write_sdc on Tue Jun  9 04:28:11 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_disable_timing [get_ports i_RST]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[55]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[54]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[53]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[52]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[51]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[50]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[49]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[48]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[47]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[46]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[45]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[44]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[43]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[42]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[41]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[40]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[39]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[38]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[37]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[36]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[35]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[34]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[33]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[32]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[31]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[30]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[29]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[28]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[27]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[26]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[25]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[24]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[23]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[22]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[21]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[20]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[19]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[18]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[17]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[16]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[15]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[14]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[13]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[12]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[11]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[10]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[9]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[8]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[7]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[6]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[5]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[4]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[3]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[2]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[1]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[0]}]
set_load -pin_load 0.01035 [get_ports o_UART_DATA_TX_VALID]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[7]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[6]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[5]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[4]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[3]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[2]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[1]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[0]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[7]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[6]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[5]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[4]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[3]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[2]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[1]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[0]}]
set_load -pin_load 0.01035 [get_ports o_MPR121_WRITE_ENABLE]
set_load -pin_load 0.01035 [get_ports o_MPR121_READ_ENABLE]
set_load -pin_load 0.01035 [get_ports o_MPR121_ERROR]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_CONTROL[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_CONTROL[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_CONTROL[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[0]}]
set_load -pin_load 0.01035 [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_load -pin_load 0 [get_ports i_CLK]
set_max_fanout 1 [get_ports i_RST]
set_load -min -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
