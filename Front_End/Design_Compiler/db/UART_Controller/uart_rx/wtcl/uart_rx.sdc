###################################################################

# Created by write_sdc on Tue Jun  9 06:10:26 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_wire_load_mode enclosed
set_max_area 0
set_wire_load_selection_group 4LM
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_RST]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_RST]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_Rx_Serial]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_Rx_Serial]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_Rx_DV]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_Rx_DV]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[7]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[7]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[6]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[6]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[5]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[5]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[4]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[4]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[3]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[3]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[2]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[2]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[1]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[1]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_Rx_Byte[0]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_Rx_Byte[0]}]
set_disable_timing [get_ports i_RST]
set_fanout_load 7 [get_ports o_Rx_DV]
set_fanout_load 6 [get_ports {o_Rx_Byte[7]}]
set_fanout_load 4 [get_ports {o_Rx_Byte[6]}]
set_fanout_load 5 [get_ports {o_Rx_Byte[5]}]
set_fanout_load 5 [get_ports {o_Rx_Byte[4]}]
set_fanout_load 6 [get_ports {o_Rx_Byte[3]}]
set_fanout_load 6 [get_ports {o_Rx_Byte[2]}]
set_fanout_load 5 [get_ports {o_Rx_Byte[1]}]
set_fanout_load 4 [get_ports {o_Rx_Byte[0]}]
set_port_fanout_number 115 [get_ports i_CLK]
set_port_fanout_number 115 [get_ports i_RST]
set_port_fanout_number 7 [get_ports o_Rx_DV]
set_port_fanout_number 6 [get_ports {o_Rx_Byte[7]}]
set_port_fanout_number 4 [get_ports {o_Rx_Byte[6]}]
set_port_fanout_number 5 [get_ports {o_Rx_Byte[5]}]
set_port_fanout_number 5 [get_ports {o_Rx_Byte[4]}]
set_port_fanout_number 6 [get_ports {o_Rx_Byte[3]}]
set_port_fanout_number 6 [get_ports {o_Rx_Byte[2]}]
set_port_fanout_number 5 [get_ports {o_Rx_Byte[1]}]
set_port_fanout_number 4 [get_ports {o_Rx_Byte[0]}]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.25034 [get_ports i_RST]
set_load -pin_load 0.01035 [get_ports o_Rx_DV]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[7]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[6]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[5]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[4]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[3]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[2]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[1]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[0]}]
set_max_fanout 1 [get_ports i_RST]
set_max_transition 1.5 [get_ports o_Rx_DV]
set_max_transition 1.5 [get_ports {o_Rx_Byte[7]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[6]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[5]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[4]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[3]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[2]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[1]}]
set_max_transition 1.5 [get_ports {o_Rx_Byte[0]}]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.25742 [get_ports i_RST]
set_load -min -pin_load 0.01466 [get_ports o_Rx_DV]
set_load -min -pin_load 0.01247 [get_ports {o_Rx_Byte[7]}]
set_load -min -pin_load 0.00804 [get_ports {o_Rx_Byte[6]}]
set_load -min -pin_load 0.00991 [get_ports {o_Rx_Byte[5]}]
set_load -min -pin_load 0.00991 [get_ports {o_Rx_Byte[4]}]
set_load -min -pin_load 0.01178 [get_ports {o_Rx_Byte[3]}]
set_load -min -pin_load 0.01178 [get_ports {o_Rx_Byte[2]}]
set_load -min -pin_load 0.00991 [get_ports {o_Rx_Byte[1]}]
set_load -min -pin_load 0.00859 [get_ports {o_Rx_Byte[0]}]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
set_input_delay 0  [get_ports i_RST]
set_input_delay 0  [get_ports i_Rx_Serial]
set_output_delay -clock clk  -max -rise 1.86393  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -max -fall 1.79801  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -min -rise 0.079619  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -min -fall 0.102361  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -max -rise 1.87702  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -max -fall 1.89821  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -min -rise 0.082001  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -min -fall 0.105473  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -max -rise 2.23535  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -max -fall 2.14396  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -min -rise 0.0840607  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -min -fall 0.108163  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -max -rise 2.47266  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -max -fall 2.38175  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -min -rise 0.0840607  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -min -fall 0.108163  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -max -rise 2.58995  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -max -fall 2.61142  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -min -rise 0.082001  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -min -fall 0.105473  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -max -rise 3.00773  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -max -fall 2.66867  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -min -rise 0.082001  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -min -fall 0.105473  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -max -rise 3.27378  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -max -fall 2.87973  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -min -rise 0.079342  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -min -fall 0.101999  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -max -rise 3.00667  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -max -fall 3.09665  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -min -rise 0.0844082  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -min -fall 0.108617  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -max -rise 2.11543  [get_ports o_Rx_DV]
set_output_delay -clock clk  -max -fall 2.2144  [get_ports o_Rx_DV]
set_output_delay -clock clk  -min -rise 0.193352  [get_ports o_Rx_DV]
set_output_delay -clock clk  -min -fall 0.207521  [get_ports o_Rx_DV]
