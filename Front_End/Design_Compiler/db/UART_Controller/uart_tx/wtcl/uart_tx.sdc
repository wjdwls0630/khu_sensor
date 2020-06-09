###################################################################

# Created by write_sdc on Tue Jun  9 06:16:26 2020

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
[get_ports i_Tx_DV]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_Tx_DV]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[7]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[7]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[6]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[6]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[5]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[5]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[4]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[4]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[3]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[3]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[2]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[2]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[1]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[1]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_Tx_Byte[0]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_Tx_Byte[0]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_Tx_Serial]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_Tx_Serial]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_Tx_Done]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_Tx_Done]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_Tx_DV]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_Tx_Byte[0]}]
set_disable_timing [get_ports i_RST]
set_fanout_load 0 [get_ports o_Tx_Serial]
set_fanout_load 4 [get_ports o_Tx_Done]
set_port_fanout_number 116 [get_ports i_CLK]
set_port_fanout_number 116 [get_ports i_RST]
set_port_fanout_number 1 [get_ports i_Tx_DV]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[7]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[6]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[5]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[4]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[3]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[2]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[1]}]
set_port_fanout_number 1 [get_ports {i_Tx_Byte[0]}]
set_port_fanout_number 4 [get_ports o_Tx_Done]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.24012 [get_ports i_RST]
set_load -pin_load 0.0019 [get_ports i_Tx_DV]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[7]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[6]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[5]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[4]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[3]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[2]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[1]}]
set_load -pin_load 0.0019 [get_ports {i_Tx_Byte[0]}]
set_load -pin_load 0.01035 [get_ports o_Tx_Serial]
set_load -pin_load 0.01035 [get_ports o_Tx_Done]
set_max_capacitance 0.082 [get_ports i_Tx_DV]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[7]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[6]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[5]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[4]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[3]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[2]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[1]}]
set_max_capacitance 0.082 [get_ports {i_Tx_Byte[0]}]
set_max_fanout 1 [get_ports i_RST]
set_max_transition 1.5 [get_ports i_Tx_DV]
set_max_transition 1.5 [get_ports {i_Tx_Byte[7]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[6]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[5]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[4]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[3]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[2]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[1]}]
set_max_transition 1.5 [get_ports {i_Tx_Byte[0]}]
set_max_transition 1.5 [get_ports o_Tx_Done]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.24708 [get_ports i_RST]
set_load -min -pin_load 0.00195 [get_ports i_Tx_DV]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_Tx_Byte[0]}]
set_load -min -pin_load 0.00968 [get_ports o_Tx_Done]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
set_input_delay 0  [get_ports i_RST]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[0]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[0]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[0]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[0]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[1]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[1]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[1]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[1]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[2]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[2]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[2]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[2]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[3]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[3]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[3]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[3]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[4]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[4]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[4]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[4]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[5]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[5]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[5]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[5]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[6]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[6]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[6]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[6]}]
set_input_delay -clock clk  -max -rise 0.546247  [get_ports {i_Tx_Byte[7]}]
set_input_delay -clock clk  -max -fall 0.413148  [get_ports {i_Tx_Byte[7]}]
set_input_delay -clock clk  -min -rise 0.18507  [get_ports {i_Tx_Byte[7]}]
set_input_delay -clock clk  -min -fall 0.139756  [get_ports {i_Tx_Byte[7]}]
set_input_delay -clock clk  -max -rise 0.546585  [get_ports i_Tx_DV]
set_input_delay -clock clk  -max -fall 0.414353  [get_ports i_Tx_DV]
set_input_delay -clock clk  -min -rise 0.185121  [get_ports i_Tx_DV]
set_input_delay -clock clk  -min -fall 0.140093  [get_ports i_Tx_DV]
set_output_delay -clock clk  -max -rise 1.35529  [get_ports o_Tx_Done]
set_output_delay -clock clk  -max -fall 1.40723  [get_ports o_Tx_Done]
set_output_delay -clock clk  -min -rise 0.278481  [get_ports o_Tx_Done]
set_output_delay -clock clk  -min -fall 0.283274  [get_ports o_Tx_Done]
set_output_delay 0  [get_ports o_Tx_Serial]
