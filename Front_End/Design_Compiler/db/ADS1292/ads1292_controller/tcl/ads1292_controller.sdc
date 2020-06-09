###################################################################

# Created by write_sdc on Tue Jun  9 04:17:48 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_disable_timing [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[23]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[22]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[21]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[20]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[19]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[18]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[17]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[16]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[15]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[14]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[13]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[12]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[11]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[10]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[9]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[8]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_load -pin_load 0.01035 [get_ports o_ADS1292_INIT_SET]
set_load -pin_load 0.01035 [get_ports o_ADS1292_DATA_VALID]
set_load -pin_load 0.01035 [get_ports o_ADS1292_BUSY]
set_load -pin_load 0.01035 [get_ports o_SPI_CLK]
set_load -pin_load 0.01035 [get_ports o_SPI_MOSI]
set_load -pin_load 0.01035 [get_ports o_ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports o_ADS1292_START]
set_load -pin_load 0.01035 [get_ports o_SPI_CSN]
set_load -pin_load 0 [get_ports i_CLK]
set_max_fanout 1 [get_ports i_RSTN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RSTN]
