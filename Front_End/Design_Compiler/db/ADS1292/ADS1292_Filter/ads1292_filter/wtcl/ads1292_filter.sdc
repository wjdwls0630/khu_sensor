###################################################################

# Created by write_sdc on Wed Jun 17 19:02:51 2020

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
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_OUT[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_ADS1292_DATA_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_ADS1292_DATA_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_FILTERED_DATA_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_FILTERED_DATA_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_ADS1292_FILTERED_DATA_ACK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_ADS1292_FILTERED_DATA_ACK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[23]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[22]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[21]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[20]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[19]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[18]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[17]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[16]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[15]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[14]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[13]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[12]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[11]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[10]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[9]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[8]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[7]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[6]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[5]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[4]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[3]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[2]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[1]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_ADS1292_DATA_VALID]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports i_ADS1292_DATA_VALID]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_driving_cell -min -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2      \
-no_design_rule [get_ports i_RSTN]
set_driving_cell -min -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin RN -no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_pins iir_hpf/i_RSTN]
set_disable_timing [get_pins iir_notch/i_RSTN]
set_disable_timing [get_pins iir_lpf/i_RSTN]
set_disable_timing [get_cells async_rst_synchronizer]
set_disable_timing [get_cells async_rstn_synchronizer]
set_disable_timing [get_cells iir_hpf/async_rst_synchronizer]
set_disable_timing [get_cells iir_hpf/async_rstn_synchronizer]
set_disable_timing [get_cells iir_notch/async_rst_synchronizer]
set_disable_timing [get_cells iir_notch/async_rstn_synchronizer]
set_disable_timing [get_cells iir_lpf/async_rst_synchronizer]
set_disable_timing [get_cells iir_lpf/async_rstn_synchronizer]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_fanout_load 1 [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_fanout_load 2 [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_port_fanout_number 1 [get_ports i_ADS1292_DATA_VALID]
set_port_fanout_number 2 [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_port_fanout_number 1 [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_port_fanout_number 346 [get_ports i_CLK]
set_port_fanout_number 2 [get_ports i_RSTN]
set_load -pin_load 0.00153 [get_ports i_ADS1292_DATA_VALID]
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
set_load -pin_load 0.0019 [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.00722 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[23]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[22]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[21]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[20]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[19]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[18]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[17]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[16]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[15]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[14]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[13]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[12]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[11]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[10]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[9]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[8]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[7]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[6]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[5]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[4]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[3]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[2]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[1]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_OUT[0]}]
set_max_capacitance 0.082 [get_ports i_ADS1292_DATA_VALID]
set_max_capacitance 0.082 [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[23]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[22]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[21]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[20]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[19]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[18]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[17]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[16]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[15]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[14]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[13]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[12]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[11]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[10]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[9]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[8]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports i_ADS1292_DATA_VALID]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_max_transition 1.5 [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_max_transition 1.5 [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_max_transition 1.5 [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_max_transition 1.5 [get_ports i_RSTN]
set_load -min -pin_load 0.00159 [get_ports i_ADS1292_DATA_VALID]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_load -min -pin_load 0.00149 [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_load -min -pin_load 0.00391 [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_load -min -pin_load 0.00195 [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.00718 [get_ports i_RSTN]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins iir_hpf/i_RSTN]
set_ideal_network [get_pins iir_notch/i_RSTN]
set_ideal_network [get_pins iir_lpf/i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
create_clock -name clk_half  -period 20  -waveform {0 10}
set_clock_latency 0.66  [get_clocks clk_half]
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_false_path   -through [list [get_ports i_RSTN] [get_pins iir_lpf/i_RSTN] [get_pins         \
iir_hpf/i_RSTN] [get_pins iir_notch/i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells async_rst_synchronizer/o_RST_reg]
set_false_path   -to [list [get_cells iir_lpf/async_rstn_synchronizer/o_RSTN_reg] [get_cells   \
iir_lpf/async_rst_synchronizer/o_RST_reg] [get_cells                           \
iir_hpf/async_rstn_synchronizer/o_RSTN_reg] [get_cells                         \
iir_hpf/async_rst_synchronizer/o_RST_reg] [get_cells                           \
iir_notch/async_rstn_synchronizer/o_RSTN_reg] [get_cells                       \
iir_notch/async_rst_synchronizer/o_RST_reg]]
set_false_path   -through [list [get_pins iir_lpf/i_RSTN]]
set_false_path   -to [get_cells iir_lpf/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells iir_lpf/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins iir_hpf/i_RSTN]]
set_false_path   -to [get_cells iir_hpf/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells iir_hpf/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins iir_notch/i_RSTN]]
set_false_path   -to [get_cells iir_notch/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells iir_notch/async_rst_synchronizer/o_RST_reg]
set_input_delay -clock clk_half  -min -rise 0.17023  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk_half  -min -fall 0.1175  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk  -max 4  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -min -rise 0.170267  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -min -fall 0.117833  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_input_delay -clock clk  -min -rise 0.167393  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_input_delay -clock clk  -min -fall 0.132168  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk_half  -min -rise 0.318628  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk_half  -min -fall 0.32258  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk_half  -min -rise 0.143964  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_output_delay -clock clk_half  -min -fall 0.169831  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
