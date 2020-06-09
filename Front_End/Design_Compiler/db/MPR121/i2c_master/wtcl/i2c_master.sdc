###################################################################

# Created by write_sdc on Tue Jun  9 05:40:20 2020

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
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports cmd_start]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports cmd_start]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports cmd_read]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports cmd_read]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports cmd_write]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports cmd_write]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports cmd_write_multiple]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports cmd_write_multiple]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports cmd_stop]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports cmd_stop]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports cmd_valid]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports cmd_valid]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[7]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[7]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[6]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[6]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[5]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[5]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[4]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[4]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[3]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[3]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[2]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[2]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[1]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[1]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_in[0]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_in[0]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports data_in_valid]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports data_in_valid]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports data_in_ready]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports data_in_ready]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports data_in_last]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports data_in_last]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[7]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[7]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[6]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[6]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[5]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[5]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[4]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[4]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[3]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[3]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[2]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[2]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[1]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[1]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {data_out[0]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {data_out[0]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports data_out_valid]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports data_out_valid]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports data_out_ready]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports data_out_ready]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports scl_i]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports scl_i]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports scl_o]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports scl_o]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports scl_t]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports scl_t]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports sda_i]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports sda_i]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports sda_o]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports sda_o]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports sda_t]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports sda_t]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports missed_ack]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports missed_ack]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports cmd_start]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports cmd_read]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports cmd_write]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports cmd_write_multiple]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports cmd_stop]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports cmd_valid]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[7]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[7]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[6]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[6]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[5]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[5]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[4]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[4]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[3]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[3]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[2]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[2]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[1]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[1]}]
set_driving_cell -rise -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin SN -no_design_rule [get_ports {data_in[0]}]
set_driving_cell -fall -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -no_design_rule [get_ports {data_in[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports data_in_valid]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports data_in_last]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports data_out_ready]
set_disable_timing [get_ports i_RSTN]
set_fanout_load 5 [get_ports data_in_ready]
set_fanout_load 1 [get_ports {data_out[7]}]
set_fanout_load 1 [get_ports {data_out[6]}]
set_fanout_load 1 [get_ports {data_out[5]}]
set_fanout_load 1 [get_ports {data_out[4]}]
set_fanout_load 1 [get_ports {data_out[3]}]
set_fanout_load 1 [get_ports {data_out[2]}]
set_fanout_load 1 [get_ports {data_out[1]}]
set_fanout_load 1 [get_ports {data_out[0]}]
set_fanout_load 2 [get_ports data_out_valid]
set_fanout_load 0 [get_ports scl_o]
set_fanout_load 0 [get_ports scl_t]
set_fanout_load 0 [get_ports sda_o]
set_fanout_load 0 [get_ports sda_t]
set_fanout_load 0 [get_ports missed_ack]
set_port_fanout_number 61 [get_ports i_CLK]
set_port_fanout_number 46 [get_ports i_RSTN]
set_port_fanout_number 1 [get_ports cmd_start]
set_port_fanout_number 1 [get_ports cmd_read]
set_port_fanout_number 1 [get_ports cmd_write]
set_port_fanout_number 1 [get_ports cmd_write_multiple]
set_port_fanout_number 1 [get_ports cmd_stop]
set_port_fanout_number 1 [get_ports cmd_valid]
set_port_fanout_number 0 [get_ports cmd_ready]
set_port_fanout_number 1 [get_ports {data_in[7]}]
set_port_fanout_number 1 [get_ports {data_in[6]}]
set_port_fanout_number 1 [get_ports {data_in[5]}]
set_port_fanout_number 1 [get_ports {data_in[4]}]
set_port_fanout_number 1 [get_ports {data_in[3]}]
set_port_fanout_number 1 [get_ports {data_in[2]}]
set_port_fanout_number 1 [get_ports {data_in[1]}]
set_port_fanout_number 1 [get_ports {data_in[0]}]
set_port_fanout_number 1 [get_ports data_in_valid]
set_port_fanout_number 5 [get_ports data_in_ready]
set_port_fanout_number 1 [get_ports data_in_last]
set_port_fanout_number 2 [get_ports data_out_valid]
set_port_fanout_number 1 [get_ports data_out_ready]
set_port_fanout_number 0 [get_ports data_out_last]
set_port_fanout_number 0 [get_ports busy]
set_port_fanout_number 0 [get_ports bus_control]
set_port_fanout_number 0 [get_ports bus_active]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.07914 [get_ports i_RSTN]
set_load -pin_load 0.0019 [get_ports cmd_start]
set_load -pin_load 0.0019 [get_ports cmd_read]
set_load -pin_load 0.0019 [get_ports cmd_write]
set_load -pin_load 0.0019 [get_ports cmd_write_multiple]
set_load -pin_load 0.0019 [get_ports cmd_stop]
set_load -pin_load 0.0019 [get_ports cmd_valid]
set_load -pin_load 0.01035 [get_ports cmd_ready]
set_load -pin_load 0.0019 [get_ports {data_in[7]}]
set_load -pin_load 0.0019 [get_ports {data_in[6]}]
set_load -pin_load 0.0019 [get_ports {data_in[5]}]
set_load -pin_load 0.0019 [get_ports {data_in[4]}]
set_load -pin_load 0.0019 [get_ports {data_in[3]}]
set_load -pin_load 0.0019 [get_ports {data_in[2]}]
set_load -pin_load 0.0019 [get_ports {data_in[1]}]
set_load -pin_load 0.0019 [get_ports {data_in[0]}]
set_load -pin_load 0.0019 [get_ports data_in_valid]
set_load -pin_load 0.01035 [get_ports data_in_ready]
set_load -pin_load 0.0019 [get_ports data_in_last]
set_load -pin_load 0.01035 [get_ports {data_out[7]}]
set_load -pin_load 0.01035 [get_ports {data_out[6]}]
set_load -pin_load 0.01035 [get_ports {data_out[5]}]
set_load -pin_load 0.01035 [get_ports {data_out[4]}]
set_load -pin_load 0.01035 [get_ports {data_out[3]}]
set_load -pin_load 0.01035 [get_ports {data_out[2]}]
set_load -pin_load 0.01035 [get_ports {data_out[1]}]
set_load -pin_load 0.01035 [get_ports {data_out[0]}]
set_load -pin_load 0.01035 [get_ports data_out_valid]
set_load -pin_load 0.0019 [get_ports data_out_ready]
set_load -pin_load 0.01035 [get_ports data_out_last]
set_load -pin_load 0.01035 [get_ports scl_o]
set_load -pin_load 0.01035 [get_ports scl_t]
set_load -pin_load 0.01035 [get_ports sda_o]
set_load -pin_load 0.01035 [get_ports sda_t]
set_load -pin_load 0.01035 [get_ports busy]
set_load -pin_load 0.01035 [get_ports bus_control]
set_load -pin_load 0.01035 [get_ports bus_active]
set_load -pin_load 0.01035 [get_ports missed_ack]
set_max_capacitance 0.082 [get_ports cmd_start]
set_max_capacitance 0.082 [get_ports cmd_read]
set_max_capacitance 0.082 [get_ports cmd_write]
set_max_capacitance 0.082 [get_ports cmd_write_multiple]
set_max_capacitance 0.082 [get_ports cmd_stop]
set_max_capacitance 0.082 [get_ports cmd_valid]
set_max_capacitance 0.082 [get_ports {data_in[7]}]
set_max_capacitance 0.082 [get_ports {data_in[6]}]
set_max_capacitance 0.082 [get_ports {data_in[5]}]
set_max_capacitance 0.082 [get_ports {data_in[4]}]
set_max_capacitance 0.082 [get_ports {data_in[3]}]
set_max_capacitance 0.082 [get_ports {data_in[2]}]
set_max_capacitance 0.082 [get_ports {data_in[1]}]
set_max_capacitance 0.082 [get_ports {data_in[0]}]
set_max_capacitance 0.082 [get_ports data_in_valid]
set_max_capacitance 0.082 [get_ports data_in_last]
set_max_capacitance 0.082 [get_ports data_out_ready]
set_max_fanout 1 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports cmd_start]
set_max_transition 1.5 [get_ports cmd_read]
set_max_transition 1.5 [get_ports cmd_write]
set_max_transition 1.5 [get_ports cmd_write_multiple]
set_max_transition 1.5 [get_ports cmd_stop]
set_max_transition 1.5 [get_ports cmd_valid]
set_max_transition 1.5 [get_ports {data_in[7]}]
set_max_transition 1.5 [get_ports {data_in[6]}]
set_max_transition 1.5 [get_ports {data_in[5]}]
set_max_transition 1.5 [get_ports {data_in[4]}]
set_max_transition 1.5 [get_ports {data_in[3]}]
set_max_transition 1.5 [get_ports {data_in[2]}]
set_max_transition 1.5 [get_ports {data_in[1]}]
set_max_transition 1.5 [get_ports {data_in[0]}]
set_max_transition 1.5 [get_ports data_in_valid]
set_max_transition 1.5 [get_ports data_in_ready]
set_max_transition 1.5 [get_ports data_in_last]
set_max_transition 1.5 [get_ports {data_out[7]}]
set_max_transition 1.5 [get_ports {data_out[6]}]
set_max_transition 1.5 [get_ports {data_out[5]}]
set_max_transition 1.5 [get_ports {data_out[4]}]
set_max_transition 1.5 [get_ports {data_out[3]}]
set_max_transition 1.5 [get_ports {data_out[2]}]
set_max_transition 1.5 [get_ports {data_out[1]}]
set_max_transition 1.5 [get_ports {data_out[0]}]
set_max_transition 1.5 [get_ports data_out_valid]
set_max_transition 1.5 [get_ports data_out_ready]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.08057 [get_ports i_RSTN]
set_load -min -pin_load 0.00195 [get_ports cmd_start]
set_load -min -pin_load 0.00195 [get_ports cmd_read]
set_load -min -pin_load 0.00195 [get_ports cmd_write]
set_load -min -pin_load 0.00195 [get_ports cmd_write_multiple]
set_load -min -pin_load 0.00195 [get_ports cmd_stop]
set_load -min -pin_load 0.00195 [get_ports cmd_valid]
set_load -min -pin_load 0.00195 [get_ports {data_in[7]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[6]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[5]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[4]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[3]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[2]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[1]}]
set_load -min -pin_load 0.00195 [get_ports {data_in[0]}]
set_load -min -pin_load 0.00195 [get_ports data_in_valid]
set_load -min -pin_load 0.01096 [get_ports data_in_ready]
set_load -min -pin_load 0.00195 [get_ports data_in_last]
set_load -min -pin_load 0.00202 [get_ports {data_out[7]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[6]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[5]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[4]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[3]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[2]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[1]}]
set_load -min -pin_load 0.00202 [get_ports {data_out[0]}]
set_load -min -pin_load 0.00374 [get_ports data_out_valid]
set_load -min -pin_load 0.00195 [get_ports data_out_ready]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RSTN]
set_input_delay 0  [get_ports i_RSTN]
set_input_delay 0  [get_ports sda_i]
set_input_delay 0  [get_ports scl_i]
set_input_delay -clock clk  -max -rise 0.546121  [get_ports data_out_ready]
set_input_delay -clock clk  -max -fall 0.4127  [get_ports data_out_ready]
set_input_delay -clock clk  -min -rise 0.184962  [get_ports data_out_ready]
set_input_delay -clock clk  -min -fall 0.139557  [get_ports data_out_ready]
set_input_delay -clock clk  -max -rise 0.546807  [get_ports data_in_last]
set_input_delay -clock clk  -max -fall 0.415146  [get_ports data_in_last]
set_input_delay -clock clk  -min -rise 0.185179  [get_ports data_in_last]
set_input_delay -clock clk  -min -fall 0.140335  [get_ports data_in_last]
set_input_delay -clock clk  -max -rise 0.546585  [get_ports data_in_valid]
set_input_delay -clock clk  -max -fall 0.414353  [get_ports data_in_valid]
set_input_delay -clock clk  -min -rise 0.185121  [get_ports data_in_valid]
set_input_delay -clock clk  -min -fall 0.140093  [get_ports data_in_valid]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[0]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[0]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[0]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[0]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[1]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[1]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[1]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[1]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[2]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[2]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[2]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[2]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[3]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[3]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[3]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[3]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[4]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[4]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[4]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[4]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[5]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[5]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[5]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[5]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[6]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[6]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[6]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[6]}]
set_input_delay -clock clk  -max -rise 0.545574  [get_ports {data_in[7]}]
set_input_delay -clock clk  -max -fall 0.410569  [get_ports {data_in[7]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {data_in[7]}]
set_input_delay -clock clk  -min -fall 0.13898  [get_ports {data_in[7]}]
set_input_delay -clock clk  -max -rise 0.544145  [get_ports cmd_valid]
set_input_delay -clock clk  -max -fall 0.400745  [get_ports cmd_valid]
set_input_delay -clock clk  -min -rise 0.184978  [get_ports cmd_valid]
set_input_delay -clock clk  -min -fall 0.135872  [get_ports cmd_valid]
set_input_delay -clock clk  -max -rise 0.544364  [get_ports cmd_stop]
set_input_delay -clock clk  -max -fall 0.402252  [get_ports cmd_stop]
set_input_delay -clock clk  -min -rise 0.184847  [get_ports cmd_stop]
set_input_delay -clock clk  -min -fall 0.13625  [get_ports cmd_stop]
set_input_delay -clock clk  -max -rise 0.542475  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -max -fall 0.387822  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -min -rise 0.184934  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -min -fall 0.131598  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -max -rise 0.542472  [get_ports cmd_write]
set_input_delay -clock clk  -max -fall 0.388005  [get_ports cmd_write]
set_input_delay -clock clk  -min -rise 0.184969  [get_ports cmd_write]
set_input_delay -clock clk  -min -fall 0.131692  [get_ports cmd_write]
set_input_delay -clock clk  -max -rise 0.54256  [get_ports cmd_read]
set_input_delay -clock clk  -max -fall 0.383036  [get_ports cmd_read]
set_input_delay -clock clk  -min -rise 0.185257  [get_ports cmd_read]
set_input_delay -clock clk  -min -fall 0.129937  [get_ports cmd_read]
set_input_delay -clock clk  -max -rise 0.544145  [get_ports cmd_start]
set_input_delay -clock clk  -max -fall 0.400745  [get_ports cmd_start]
set_input_delay -clock clk  -min -rise 0.184796  [get_ports cmd_start]
set_input_delay -clock clk  -min -fall 0.135737  [get_ports cmd_start]
set_output_delay 0  [get_ports missed_ack]
set_output_delay 0  [get_ports sda_t]
set_output_delay 0  [get_ports sda_o]
set_output_delay 0  [get_ports scl_t]
set_output_delay 0  [get_ports scl_o]
set_output_delay -clock clk  -max -rise 1.35095  [get_ports data_out_valid]
set_output_delay -clock clk  -max -fall 0.95848  [get_ports data_out_valid]
set_output_delay -clock clk  -min -rise 0.159742  [get_ports data_out_valid]
set_output_delay -clock clk  -min -fall 0.215628  [get_ports data_out_valid]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[0]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[0]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[0]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[0]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[1]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[1]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[1]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[1]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[2]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[2]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[2]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[2]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[3]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[3]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[3]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[3]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[4]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[4]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[4]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[4]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[5]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[5]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[5]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[5]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[6]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[6]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[6]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[6]}]
set_output_delay -clock clk  -max -rise 0.218998  [get_ports {data_out[7]}]
set_output_delay -clock clk  -max -fall 0.213042  [get_ports {data_out[7]}]
set_output_delay -clock clk  -min -rise 0.0678736  [get_ports {data_out[7]}]
set_output_delay -clock clk  -min -fall 0.0892127  [get_ports {data_out[7]}]
set_output_delay -clock clk  -max -rise 1.21488  [get_ports data_in_ready]
set_output_delay -clock clk  -max -fall 1.29285  [get_ports data_in_ready]
set_output_delay -clock clk  -min -rise 0.104992  [get_ports data_in_ready]
set_output_delay -clock clk  -min -fall 0.125605  [get_ports data_in_ready]
