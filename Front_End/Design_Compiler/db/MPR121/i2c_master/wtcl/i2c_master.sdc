###################################################################

# Created by write_sdc on Wed Jun 17 18:00:50 2020

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
set_driving_cell -min -lib_cell nid2_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 1.44171 -input_transition_fall 0.750039     \
-no_design_rule [get_ports i_RSTN]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports cmd_start]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports cmd_start]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports cmd_read]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports cmd_read]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports cmd_write]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports cmd_write]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports cmd_write_multiple]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports cmd_write_multiple]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports cmd_stop]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports cmd_stop]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports cmd_valid]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports cmd_valid]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {data_in[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports {data_in[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports data_in_valid]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports data_in_valid]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports data_in_last]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports data_in_last]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports data_out_ready]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports data_out_ready]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells async_rstn_synchronizer]
set_fanout_load 6 [get_ports data_in_ready]
set_fanout_load 1 [get_ports {data_out[7]}]
set_fanout_load 1 [get_ports {data_out[6]}]
set_fanout_load 1 [get_ports {data_out[5]}]
set_fanout_load 1 [get_ports {data_out[4]}]
set_fanout_load 1 [get_ports {data_out[3]}]
set_fanout_load 1 [get_ports {data_out[2]}]
set_fanout_load 1 [get_ports {data_out[1]}]
set_fanout_load 1 [get_ports {data_out[0]}]
set_fanout_load 1 [get_ports data_out_valid]
set_fanout_load 0 [get_ports scl_o]
set_fanout_load 0 [get_ports scl_t]
set_fanout_load 0 [get_ports sda_o]
set_fanout_load 0 [get_ports sda_t]
set_fanout_load 0 [get_ports missed_ack]
set_port_fanout_number 63 [get_ports i_CLK]
set_port_fanout_number 28 [get_ports i_RSTN]
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
set_port_fanout_number 6 [get_ports data_in_ready]
set_port_fanout_number 1 [get_ports data_in_last]
set_port_fanout_number 1 [get_ports data_out_ready]
set_port_fanout_number 0 [get_ports data_out_last]
set_port_fanout_number 0 [get_ports busy]
set_port_fanout_number 0 [get_ports bus_control]
set_port_fanout_number 0 [get_ports bus_active]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.04707 [get_ports i_RSTN]
set_load -pin_load 0.00136 [get_ports cmd_start]
set_load -pin_load 0.00158 [get_ports cmd_read]
set_load -pin_load 0.00136 [get_ports cmd_write]
set_load -pin_load 0.00152 [get_ports cmd_write_multiple]
set_load -pin_load 0.00136 [get_ports cmd_stop]
set_load -pin_load 0.00166 [get_ports cmd_valid]
set_load -pin_load 0.01035 [get_ports cmd_ready]
set_load -pin_load 0.00154 [get_ports {data_in[7]}]
set_load -pin_load 0.00154 [get_ports {data_in[6]}]
set_load -pin_load 0.00154 [get_ports {data_in[5]}]
set_load -pin_load 0.00154 [get_ports {data_in[4]}]
set_load -pin_load 0.00154 [get_ports {data_in[3]}]
set_load -pin_load 0.00154 [get_ports {data_in[2]}]
set_load -pin_load 0.00154 [get_ports {data_in[1]}]
set_load -pin_load 0.00154 [get_ports {data_in[0]}]
set_load -pin_load 0.00194 [get_ports data_in_valid]
set_load -pin_load 0.01035 [get_ports data_in_ready]
set_load -pin_load 0.00204 [get_ports data_in_last]
set_load -pin_load 0.01035 [get_ports {data_out[7]}]
set_load -pin_load 0.01035 [get_ports {data_out[6]}]
set_load -pin_load 0.01035 [get_ports {data_out[5]}]
set_load -pin_load 0.01035 [get_ports {data_out[4]}]
set_load -pin_load 0.01035 [get_ports {data_out[3]}]
set_load -pin_load 0.01035 [get_ports {data_out[2]}]
set_load -pin_load 0.01035 [get_ports {data_out[1]}]
set_load -pin_load 0.01035 [get_ports {data_out[0]}]
set_load -pin_load 0.01035 [get_ports data_out_valid]
set_load -pin_load 0.00136 [get_ports data_out_ready]
set_load -pin_load 0.01035 [get_ports data_out_last]
set_load -pin_load 0.01035 [get_ports scl_o]
set_load -pin_load 0.01035 [get_ports scl_t]
set_load -pin_load 0.01035 [get_ports sda_o]
set_load -pin_load 0.01035 [get_ports sda_t]
set_load -pin_load 0.01035 [get_ports busy]
set_load -pin_load 0.01035 [get_ports bus_control]
set_load -pin_load 0.01035 [get_ports bus_active]
set_load -pin_load 0.01035 [get_ports missed_ack]
set_max_capacitance 0.173 [get_ports i_RSTN]
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
set_max_transition 1.5 [get_ports i_RSTN]
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
set_load -min -pin_load 0.04899 [get_ports i_RSTN]
set_load -min -pin_load 0.00143 [get_ports cmd_start]
set_load -min -pin_load 0.00163 [get_ports cmd_read]
set_load -min -pin_load 0.00143 [get_ports cmd_write]
set_load -min -pin_load 0.00156 [get_ports cmd_write_multiple]
set_load -min -pin_load 0.00143 [get_ports cmd_stop]
set_load -min -pin_load 0.00171 [get_ports cmd_valid]
set_load -min -pin_load 0.0016 [get_ports {data_in[7]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[6]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[5]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[4]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[3]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[2]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[1]}]
set_load -min -pin_load 0.0016 [get_ports {data_in[0]}]
set_load -min -pin_load 0.00202 [get_ports data_in_valid]
set_load -min -pin_load 0.01685 [get_ports data_in_ready]
set_load -min -pin_load 0.0021 [get_ports data_in_last]
set_load -min -pin_load 0.00167 [get_ports {data_out[7]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[6]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[5]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[4]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[3]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[2]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[1]}]
set_load -min -pin_load 0.00167 [get_ports {data_out[0]}]
set_load -min -pin_load 0.00257 [get_ports data_out_valid]
set_load -min -pin_load 0.00143 [get_ports data_out_ready]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_ports i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_input_delay -clock clk  -max 4  [get_ports sda_i]
set_input_delay -min 0  -add_delay  [get_ports sda_i]
set_input_delay -clock clk  -max 4  [get_ports scl_i]
set_input_delay -min 0  -add_delay  [get_ports scl_i]
set_input_delay -clock clk  -max 4  [get_ports data_out_ready]
set_input_delay -clock clk  -min -rise 0.170315  [get_ports data_out_ready]
set_input_delay -clock clk  -min -fall 0.122868  [get_ports data_out_ready]
set_input_delay -clock clk  -max 4  [get_ports data_in_last]
set_input_delay -clock clk  -min -rise 0.170315  [get_ports data_in_last]
set_input_delay -clock clk  -min -fall 0.122992  [get_ports data_in_last]
set_input_delay -clock clk  -max 4  [get_ports data_in_valid]
set_input_delay -clock clk  -min -rise 0.170391  [get_ports data_in_valid]
set_input_delay -clock clk  -min -fall 0.122927  [get_ports data_in_valid]
set_input_delay -clock clk  -max 4  [get_ports {data_in[0]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[0]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[0]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[1]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[1]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[1]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[2]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[2]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[2]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[3]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[3]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[3]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[4]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[4]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[4]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[5]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[5]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[5]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[6]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[6]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[6]}]
set_input_delay -clock clk  -max 4  [get_ports {data_in[7]}]
set_input_delay -clock clk  -min -rise 0.170202  [get_ports {data_in[7]}]
set_input_delay -clock clk  -min -fall 0.121901  [get_ports {data_in[7]}]
set_input_delay -clock clk  -max 4  [get_ports cmd_valid]
set_input_delay -clock clk  -min -rise 0.170488  [get_ports cmd_valid]
set_input_delay -clock clk  -min -fall 0.118228  [get_ports cmd_valid]
set_input_delay -clock clk  -max 4  [get_ports cmd_stop]
set_input_delay -clock clk  -min -rise 0.170414  [get_ports cmd_stop]
set_input_delay -clock clk  -min -fall 0.11896  [get_ports cmd_stop]
set_input_delay -clock clk  -max 4  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -min -rise 0.170505  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -min -fall 0.113101  [get_ports cmd_write_multiple]
set_input_delay -clock clk  -max 4  [get_ports cmd_write]
set_input_delay -clock clk  -min -rise 0.170648  [get_ports cmd_write]
set_input_delay -clock clk  -min -fall 0.113373  [get_ports cmd_write]
set_input_delay -clock clk  -max 4  [get_ports cmd_read]
set_input_delay -clock clk  -min -rise 0.170827  [get_ports cmd_read]
set_input_delay -clock clk  -min -fall 0.110979  [get_ports cmd_read]
set_input_delay -clock clk  -max 4  [get_ports cmd_start]
set_input_delay -clock clk  -min -rise 0.170377  [get_ports cmd_start]
set_input_delay -clock clk  -min -fall 0.1184  [get_ports cmd_start]
set_output_delay -clock clk  -max 4  [get_ports missed_ack]
set_output_delay -clock clk  -max 4  [get_ports sda_t]
set_output_delay -clock clk  -max 4  [get_ports sda_o]
set_output_delay -clock clk  -max 4  [get_ports scl_t]
set_output_delay -clock clk  -max 4  [get_ports scl_o]
set_output_delay -clock clk  -max 4  [get_ports data_out_valid]
set_output_delay -clock clk  -min -rise 0.321567  [get_ports data_out_valid]
set_output_delay -clock clk  -min -fall 0.302394  [get_ports data_out_valid]
set_output_delay -clock clk  -max 4  [get_ports {data_out[0]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[0]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[0]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[1]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[1]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[1]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[2]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[2]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[2]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[3]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[3]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[3]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[4]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[4]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[4]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[5]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[5]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[5]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[6]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[6]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[6]}]
set_output_delay -clock clk  -max 4  [get_ports {data_out[7]}]
set_output_delay -clock clk  -min -rise 0.0652564  [get_ports {data_out[7]}]
set_output_delay -clock clk  -min -fall 0.09053  [get_ports {data_out[7]}]
set_output_delay -clock clk  -max 4  [get_ports data_in_ready]
set_output_delay -clock clk  -min -rise 0.0439791  [get_ports data_in_ready]
set_output_delay -clock clk  -min -fall 0.0970645  [get_ports data_in_ready]
set_output_delay -clock clk  -max 4  [get_ports cmd_ready]
set_output_delay -clock clk  -max 4  [get_ports data_out_last]
set_output_delay -clock clk  -max 4  [get_ports busy]
set_output_delay -clock clk  -max 4  [get_ports bus_control]
set_output_delay -clock clk  -max 4  [get_ports bus_active]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
