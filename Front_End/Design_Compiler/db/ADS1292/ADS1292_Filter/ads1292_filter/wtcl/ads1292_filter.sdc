###################################################################

# Created by write_sdc on Tue Jun  9 06:04:12 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_wire_load_mode enclosed
set_max_area 0
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
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[23]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[22]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[21]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[20]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[19]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[18]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[17]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[16]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[15]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[14]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[13]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[12]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[11]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[10]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[9]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[8]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[7]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[6]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[5]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[4]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[3]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[2]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[1]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_DATA_OUT[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_ADS1292_DATA_VALID]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_disable_timing [get_ports i_RSTN]
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
set_port_fanout_number 330 [get_ports i_CLK]
set_port_fanout_number 228 [get_ports i_RSTN]
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
set_load -pin_load 0.45159 [get_ports i_RSTN]
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
set_max_fanout 1 [get_ports i_RSTN]
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
set_load -min -pin_load 0.45939 [get_ports i_RSTN]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
create_clock -name clk_half  -period 20  -waveform {0 10}
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_false_path   -from [get_ports i_RSTN]
set_input_delay 0  [get_ports i_RSTN]
set_input_delay -clock clk_half  -max -rise 0.544028  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk_half  -max -fall 0.399937  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk_half  -min -rise 0.184715  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk_half  -min -fall 0.135423  [get_ports i_ADS1292_FILTERED_DATA_ACK]
set_input_delay -clock clk  -max -rise 0.544145  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -max -fall 0.400745  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -min -rise 0.184759  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -min -fall 0.13571  [get_ports i_ADS1292_DATA_VALID]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[0]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[1]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[2]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[3]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[4]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[5]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[6]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[7]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[8]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[9]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[10]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[11]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[12]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[13]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[14]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[15]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[16]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[17]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[18]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[19]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[20]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[21]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[22]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_input_delay -clock clk  -min -rise 0.183276  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_input_delay -clock clk  -min -fall 0.14723  [get_ports {i_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk_half  -max -rise 1.75703  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk_half  -max -fall 1.8306  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk_half  -min -rise 0.319187  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk_half  -min -fall 0.32281  [get_ports o_ADS1292_FILTERED_DATA_VALID]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[0]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[1]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[2]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[3]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[4]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[5]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[6]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[7]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[8]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[9]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[10]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[11]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[12]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[13]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[14]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[15]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[16]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[17]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[18]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[19]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[20]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[21]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[22]}]
set_output_delay -clock clk_half  -max -rise 0.447766  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_output_delay -clock clk_half  -max -fall 0.434277  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_output_delay -clock clk_half  -min -rise 0.144255  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_output_delay -clock clk_half  -min -fall 0.17259  [get_ports {o_ADS1292_FILTERED_DATA[23]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets converter_i2f/i_CLK]
