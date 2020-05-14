###################################################################

# Created by write_sdc on Thu May 14 20:27:31 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_load -pin_load 0.01035 [get_ports o_AB_ACK]
set_load -pin_load 0.01035 [get_ports {o_Z[31]}]
set_load -pin_load 0.01035 [get_ports {o_Z[30]}]
set_load -pin_load 0.01035 [get_ports {o_Z[29]}]
set_load -pin_load 0.01035 [get_ports {o_Z[28]}]
set_load -pin_load 0.01035 [get_ports {o_Z[27]}]
set_load -pin_load 0.01035 [get_ports {o_Z[26]}]
set_load -pin_load 0.01035 [get_ports {o_Z[25]}]
set_load -pin_load 0.01035 [get_ports {o_Z[24]}]
set_load -pin_load 0.01035 [get_ports {o_Z[23]}]
set_load -pin_load 0.01035 [get_ports {o_Z[22]}]
set_load -pin_load 0.01035 [get_ports {o_Z[21]}]
set_load -pin_load 0.01035 [get_ports {o_Z[20]}]
set_load -pin_load 0.01035 [get_ports {o_Z[19]}]
set_load -pin_load 0.01035 [get_ports {o_Z[18]}]
set_load -pin_load 0.01035 [get_ports {o_Z[17]}]
set_load -pin_load 0.01035 [get_ports {o_Z[16]}]
set_load -pin_load 0.01035 [get_ports {o_Z[15]}]
set_load -pin_load 0.01035 [get_ports {o_Z[14]}]
set_load -pin_load 0.01035 [get_ports {o_Z[13]}]
set_load -pin_load 0.01035 [get_ports {o_Z[12]}]
set_load -pin_load 0.01035 [get_ports {o_Z[11]}]
set_load -pin_load 0.01035 [get_ports {o_Z[10]}]
set_load -pin_load 0.01035 [get_ports {o_Z[9]}]
set_load -pin_load 0.01035 [get_ports {o_Z[8]}]
set_load -pin_load 0.01035 [get_ports {o_Z[7]}]
set_load -pin_load 0.01035 [get_ports {o_Z[6]}]
set_load -pin_load 0.01035 [get_ports {o_Z[5]}]
set_load -pin_load 0.01035 [get_ports {o_Z[4]}]
set_load -pin_load 0.01035 [get_ports {o_Z[3]}]
set_load -pin_load 0.01035 [get_ports {o_Z[2]}]
set_load -pin_load 0.01035 [get_ports {o_Z[1]}]
set_load -pin_load 0.01035 [get_ports {o_Z[0]}]
set_load -pin_load 0.01035 [get_ports o_Z_STB]
set_load -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
