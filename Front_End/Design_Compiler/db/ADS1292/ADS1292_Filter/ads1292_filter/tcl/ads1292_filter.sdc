###################################################################

# Created by write_sdc on Tue Jun  9 04:26:57 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_disable_timing [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_load -pin_load 0.01035 [get_ports o_ADS1292_FILTERED_DATA_VALID]
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
