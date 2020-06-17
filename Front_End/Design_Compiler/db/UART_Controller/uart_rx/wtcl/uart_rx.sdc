###################################################################

# Created by write_sdc on Wed Jun 17 19:05:11 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_wire_load_mode enclosed
set_max_dynamic_power 0
set_max_area 0
set_max_leakage_power 0
set_wire_load_selection_group 4LM
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
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
set_driving_cell -min -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2      \
-no_design_rule [get_ports i_RSTN]
set_driving_cell -min -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin RN -no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells async_rst_synchronizer]
set_fanout_load 7 [get_ports o_Rx_DV]
set_fanout_load 6 [get_ports {o_Rx_Byte[7]}]
set_fanout_load 4 [get_ports {o_Rx_Byte[6]}]
set_fanout_load 5 [get_ports {o_Rx_Byte[5]}]
set_fanout_load 5 [get_ports {o_Rx_Byte[4]}]
set_fanout_load 6 [get_ports {o_Rx_Byte[3]}]
set_fanout_load 6 [get_ports {o_Rx_Byte[2]}]
set_fanout_load 5 [get_ports {o_Rx_Byte[1]}]
set_fanout_load 4 [get_ports {o_Rx_Byte[0]}]
set_port_fanout_number 121 [get_ports i_CLK]
set_port_fanout_number 2 [get_ports i_RSTN]
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
set_load -pin_load 0.00752 [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports o_Rx_DV]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[7]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[6]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[5]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[4]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[3]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[2]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[1]}]
set_load -pin_load 0.01035 [get_ports {o_Rx_Byte[0]}]
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports i_RSTN]
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
set_load -min -pin_load 0.00748 [get_ports i_RSTN]
set_load -min -pin_load 0.01466 [get_ports o_Rx_DV]
set_load -min -pin_load 0.01247 [get_ports {o_Rx_Byte[7]}]
set_load -min -pin_load 0.00804 [get_ports {o_Rx_Byte[6]}]
set_load -min -pin_load 0.00991 [get_ports {o_Rx_Byte[5]}]
set_load -min -pin_load 0.00991 [get_ports {o_Rx_Byte[4]}]
set_load -min -pin_load 0.01178 [get_ports {o_Rx_Byte[3]}]
set_load -min -pin_load 0.01178 [get_ports {o_Rx_Byte[2]}]
set_load -min -pin_load 0.00991 [get_ports {o_Rx_Byte[1]}]
set_load -min -pin_load 0.00859 [get_ports {o_Rx_Byte[0]}]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_latency 0.66  [get_clocks clk]
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_false_path   -to [get_cells async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_ports i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_input_delay -clock clk  -max 4  [get_ports i_Rx_Serial]
set_input_delay -min 0  -add_delay  [get_ports i_Rx_Serial]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -min -rise 0.079383  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -min -fall 0.0995107  [get_ports {o_Rx_Byte[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -min -rise 0.0817491  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -min -fall 0.102675  [get_ports {o_Rx_Byte[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -min -rise 0.0837952  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -min -fall 0.105411  [get_ports {o_Rx_Byte[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -min -rise 0.0837952  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -min -fall 0.105411  [get_ports {o_Rx_Byte[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -min -rise 0.0817491  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -min -fall 0.102675  [get_ports {o_Rx_Byte[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -min -rise 0.0817491  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -min -fall 0.102675  [get_ports {o_Rx_Byte[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -min -rise 0.0791078  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -min -fall 0.0991427  [get_ports {o_Rx_Byte[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -min -rise 0.0841404  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -min -fall 0.105872  [get_ports {o_Rx_Byte[7]}]
set_output_delay -clock clk  -max 4  [get_ports o_Rx_DV]
set_output_delay -clock clk  -min -rise 0.193113  [get_ports o_Rx_DV]
set_output_delay -clock clk  -min -fall 0.207075  [get_ports o_Rx_DV]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rst_synchronizer/i_CLK]
