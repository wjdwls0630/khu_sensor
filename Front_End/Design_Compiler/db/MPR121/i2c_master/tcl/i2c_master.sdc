###################################################################

# Created by write_sdc on Thu May 14 19:21:31 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports cmd_ready]
set_load -pin_load 0.01035 [get_ports data_in_ready]
set_load -pin_load 0.01035 [get_ports {data_out[7]}]
set_load -pin_load 0.01035 [get_ports {data_out[6]}]
set_load -pin_load 0.01035 [get_ports {data_out[5]}]
set_load -pin_load 0.01035 [get_ports {data_out[4]}]
set_load -pin_load 0.01035 [get_ports {data_out[3]}]
set_load -pin_load 0.01035 [get_ports {data_out[2]}]
set_load -pin_load 0.01035 [get_ports {data_out[1]}]
set_load -pin_load 0.01035 [get_ports {data_out[0]}]
set_load -pin_load 0.01035 [get_ports data_out_valid]
set_load -pin_load 0.01035 [get_ports data_out_last]
set_load -pin_load 0.01035 [get_ports scl_o]
set_load -pin_load 0.01035 [get_ports scl_t]
set_load -pin_load 0.01035 [get_ports sda_o]
set_load -pin_load 0.01035 [get_ports sda_t]
set_load -pin_load 0.01035 [get_ports busy]
set_load -pin_load 0.01035 [get_ports bus_control]
set_load -pin_load 0.01035 [get_ports bus_active]
set_load -pin_load 0.01035 [get_ports missed_ack]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RSTN]
