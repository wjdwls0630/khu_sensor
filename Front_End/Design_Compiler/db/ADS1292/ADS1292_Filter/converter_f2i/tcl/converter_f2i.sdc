###################################################################

# Created by write_sdc on Wed May  6 15:29:54 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_fanout 6 [current_design]
set_max_area 0
set_disable_timing [get_ports i_RST]
set_load -pin_load 0.01035 [get_ports o_A_ACK]
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
create_clock [get_ports i_CLK]  -name clk  -period 20  -waveform {0 10}
set_clock_latency 1  [get_clocks clk]
set_clock_uncertainty -setup 0.1  [get_clocks clk]
set_clock_transition -max -rise 0.5 [get_clocks clk]
set_clock_transition -max -fall 0.5 [get_clocks clk]
set_input_delay -clock clk  -max 1.2  [get_ports i_CLK]
set_input_delay -clock clk  -max 1.2  [get_ports i_RST]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[31]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[30]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[29]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[28]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[27]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[26]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[25]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[24]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[23]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[22]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[21]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[20]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[19]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[18]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[17]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[16]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[15]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[14]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[13]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[12]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[11]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[10]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[9]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[8]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[7]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[6]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[5]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[4]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[3]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[2]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[1]}]
set_input_delay -clock clk  -max 1.2  [get_ports {i_A[0]}]
set_input_delay -clock clk  -max 1.2  [get_ports i_A_STB]
set_input_delay -clock clk  -max 1.2  [get_ports i_Z_ACK]
set_output_delay -clock clk  -max 1.5  [get_ports o_A_ACK]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[7]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[6]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[5]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[4]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[3]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[2]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[1]}]
set_output_delay -clock clk  -max 1.5  [get_ports {o_Z[0]}]
set_output_delay -clock clk  -max 1.5  [get_ports o_Z_STB]
set_input_transition -max 0.5  [get_ports {i_A[31]}]
set_input_transition -max 0.5  [get_ports {i_A[30]}]
set_input_transition -max 0.5  [get_ports {i_A[29]}]
set_input_transition -max 0.5  [get_ports {i_A[28]}]
set_input_transition -max 0.5  [get_ports {i_A[27]}]
set_input_transition -max 0.5  [get_ports {i_A[26]}]
set_input_transition -max 0.5  [get_ports {i_A[25]}]
set_input_transition -max 0.5  [get_ports {i_A[24]}]
set_input_transition -max 0.5  [get_ports {i_A[23]}]
set_input_transition -max 0.5  [get_ports {i_A[22]}]
set_input_transition -max 0.5  [get_ports {i_A[21]}]
set_input_transition -max 0.5  [get_ports {i_A[20]}]
set_input_transition -max 0.5  [get_ports {i_A[19]}]
set_input_transition -max 0.5  [get_ports {i_A[18]}]
set_input_transition -max 0.5  [get_ports {i_A[17]}]
set_input_transition -max 0.5  [get_ports {i_A[16]}]
set_input_transition -max 0.5  [get_ports {i_A[15]}]
set_input_transition -max 0.5  [get_ports {i_A[14]}]
set_input_transition -max 0.5  [get_ports {i_A[13]}]
set_input_transition -max 0.5  [get_ports {i_A[12]}]
set_input_transition -max 0.5  [get_ports {i_A[11]}]
set_input_transition -max 0.5  [get_ports {i_A[10]}]
set_input_transition -max 0.5  [get_ports {i_A[9]}]
set_input_transition -max 0.5  [get_ports {i_A[8]}]
set_input_transition -max 0.5  [get_ports {i_A[7]}]
set_input_transition -max 0.5  [get_ports {i_A[6]}]
set_input_transition -max 0.5  [get_ports {i_A[5]}]
set_input_transition -max 0.5  [get_ports {i_A[4]}]
set_input_transition -max 0.5  [get_ports {i_A[3]}]
set_input_transition -max 0.5  [get_ports {i_A[2]}]
set_input_transition -max 0.5  [get_ports {i_A[1]}]
set_input_transition -max 0.5  [get_ports {i_A[0]}]
set_input_transition -max 0.5  [get_ports i_A_STB]
set_input_transition -max 0.5  [get_ports i_Z_ACK]
set_input_transition -max 0.5  [get_ports i_CLK]
set_input_transition -max 0.5  [get_ports i_RST]
