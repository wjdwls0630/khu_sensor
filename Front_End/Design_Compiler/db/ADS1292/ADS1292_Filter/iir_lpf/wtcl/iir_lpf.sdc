###################################################################

# Created by write_sdc on Wed Jun 17 18:14:34 2020

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
[get_ports {i_X_DATA[31]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[31]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[30]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[30]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[29]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[29]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[28]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[28]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[27]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[27]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[26]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[26]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[25]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[25]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[24]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[24]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_X_DATA[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_X_DATA[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_X_DATA_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_X_DATA_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_X_DATA_READY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_X_DATA_READY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[31]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[31]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[30]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[30]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[29]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[29]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[28]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[28]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[27]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[27]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[26]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[26]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[25]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[25]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[24]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[24]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Y_DATA[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Y_DATA[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_Y_DATA_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_Y_DATA_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_Y_ACK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_Y_ACK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[31]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[30]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[29]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[28]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[27]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[26]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[25]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[24]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[23]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[22]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[21]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[20]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[19]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[18]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[17]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[16]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[15]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[14]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[13]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[12]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[11]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[10]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[9]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[8]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_X_DATA[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_X_DATA_VALID]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_Y_ACK]
set_driving_cell -min -lib_cell nid6_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 0.418115 -input_transition_fall 0.260334    \
-no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells async_rst_synchronizer]
set_disable_timing [get_cells async_rstn_synchronizer]
set_fanout_load 2 [get_ports o_X_DATA_READY]
set_fanout_load 1 [get_ports {o_Y_DATA[31]}]
set_fanout_load 1 [get_ports {o_Y_DATA[30]}]
set_fanout_load 1 [get_ports {o_Y_DATA[29]}]
set_fanout_load 1 [get_ports {o_Y_DATA[28]}]
set_fanout_load 1 [get_ports {o_Y_DATA[27]}]
set_fanout_load 1 [get_ports {o_Y_DATA[26]}]
set_fanout_load 1 [get_ports {o_Y_DATA[25]}]
set_fanout_load 1 [get_ports {o_Y_DATA[24]}]
set_fanout_load 1 [get_ports {o_Y_DATA[23]}]
set_fanout_load 1 [get_ports {o_Y_DATA[22]}]
set_fanout_load 1 [get_ports {o_Y_DATA[21]}]
set_fanout_load 1 [get_ports {o_Y_DATA[20]}]
set_fanout_load 1 [get_ports {o_Y_DATA[19]}]
set_fanout_load 1 [get_ports {o_Y_DATA[18]}]
set_fanout_load 1 [get_ports {o_Y_DATA[17]}]
set_fanout_load 1 [get_ports {o_Y_DATA[16]}]
set_fanout_load 1 [get_ports {o_Y_DATA[15]}]
set_fanout_load 1 [get_ports {o_Y_DATA[14]}]
set_fanout_load 1 [get_ports {o_Y_DATA[13]}]
set_fanout_load 1 [get_ports {o_Y_DATA[12]}]
set_fanout_load 1 [get_ports {o_Y_DATA[11]}]
set_fanout_load 1 [get_ports {o_Y_DATA[10]}]
set_fanout_load 1 [get_ports {o_Y_DATA[9]}]
set_fanout_load 1 [get_ports {o_Y_DATA[8]}]
set_fanout_load 1 [get_ports {o_Y_DATA[7]}]
set_fanout_load 1 [get_ports {o_Y_DATA[6]}]
set_fanout_load 1 [get_ports {o_Y_DATA[5]}]
set_fanout_load 1 [get_ports {o_Y_DATA[4]}]
set_fanout_load 1 [get_ports {o_Y_DATA[3]}]
set_fanout_load 1 [get_ports {o_Y_DATA[2]}]
set_fanout_load 1 [get_ports {o_Y_DATA[1]}]
set_fanout_load 1 [get_ports {o_Y_DATA[0]}]
set_fanout_load 2 [get_ports o_Y_DATA_VALID]
set_port_fanout_number 1 [get_ports {i_X_DATA[31]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[30]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[29]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[28]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[27]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[26]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[25]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[24]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[23]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[22]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[21]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[20]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[19]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[18]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[17]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[16]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[15]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[14]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[13]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[12]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[11]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[10]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[9]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[8]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[7]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[6]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[5]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[4]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[3]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[2]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[1]}]
set_port_fanout_number 1 [get_ports {i_X_DATA[0]}]
set_port_fanout_number 1 [get_ports i_X_DATA_VALID]
set_port_fanout_number 2 [get_ports o_X_DATA_READY]
set_port_fanout_number 2 [get_ports o_Y_DATA_VALID]
set_port_fanout_number 1 [get_ports i_Y_ACK]
set_port_fanout_number 3422 [get_ports i_CLK]
set_port_fanout_number 92 [get_ports i_RSTN]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[31]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[30]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[29]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[28]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[27]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[26]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[25]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[24]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[23]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[22]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[21]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[20]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[19]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[18]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[17]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[16]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[15]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[14]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[13]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[12]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[11]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[10]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[9]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[8]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[7]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[6]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[5]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[4]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[3]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[2]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[1]}]
set_load -pin_load 0.0019 [get_ports {i_X_DATA[0]}]
set_load -pin_load 0.0019 [get_ports i_X_DATA_VALID]
set_load -pin_load 0.01035 [get_ports o_X_DATA_READY]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[31]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[30]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[29]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[28]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[27]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[26]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[25]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[24]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[23]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[22]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[21]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[20]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[19]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[18]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[17]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[16]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[15]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[14]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[13]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[12]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[11]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[10]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[9]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[8]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[7]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[6]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[5]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[4]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[3]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[2]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[1]}]
set_load -pin_load 0.01035 [get_ports {o_Y_DATA[0]}]
set_load -pin_load 0.01035 [get_ports o_Y_DATA_VALID]
set_load -pin_load 0.0019 [get_ports i_Y_ACK]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.16561 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports {i_X_DATA[31]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[30]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[29]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[28]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[27]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[26]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[25]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[24]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[23]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[22]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[21]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[20]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[19]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[18]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[17]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[16]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[15]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[14]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[13]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[12]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[11]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[10]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[9]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[8]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[7]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[6]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[5]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[4]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[3]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[2]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[1]}]
set_max_capacitance 0.082 [get_ports {i_X_DATA[0]}]
set_max_capacitance 0.082 [get_ports i_X_DATA_VALID]
set_max_capacitance 0.082 [get_ports i_Y_ACK]
set_max_capacitance 0.522 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {i_X_DATA[31]}]
set_max_transition 1.5 [get_ports {i_X_DATA[30]}]
set_max_transition 1.5 [get_ports {i_X_DATA[29]}]
set_max_transition 1.5 [get_ports {i_X_DATA[28]}]
set_max_transition 1.5 [get_ports {i_X_DATA[27]}]
set_max_transition 1.5 [get_ports {i_X_DATA[26]}]
set_max_transition 1.5 [get_ports {i_X_DATA[25]}]
set_max_transition 1.5 [get_ports {i_X_DATA[24]}]
set_max_transition 1.5 [get_ports {i_X_DATA[23]}]
set_max_transition 1.5 [get_ports {i_X_DATA[22]}]
set_max_transition 1.5 [get_ports {i_X_DATA[21]}]
set_max_transition 1.5 [get_ports {i_X_DATA[20]}]
set_max_transition 1.5 [get_ports {i_X_DATA[19]}]
set_max_transition 1.5 [get_ports {i_X_DATA[18]}]
set_max_transition 1.5 [get_ports {i_X_DATA[17]}]
set_max_transition 1.5 [get_ports {i_X_DATA[16]}]
set_max_transition 1.5 [get_ports {i_X_DATA[15]}]
set_max_transition 1.5 [get_ports {i_X_DATA[14]}]
set_max_transition 1.5 [get_ports {i_X_DATA[13]}]
set_max_transition 1.5 [get_ports {i_X_DATA[12]}]
set_max_transition 1.5 [get_ports {i_X_DATA[11]}]
set_max_transition 1.5 [get_ports {i_X_DATA[10]}]
set_max_transition 1.5 [get_ports {i_X_DATA[9]}]
set_max_transition 1.5 [get_ports {i_X_DATA[8]}]
set_max_transition 1.5 [get_ports {i_X_DATA[7]}]
set_max_transition 1.5 [get_ports {i_X_DATA[6]}]
set_max_transition 1.5 [get_ports {i_X_DATA[5]}]
set_max_transition 1.5 [get_ports {i_X_DATA[4]}]
set_max_transition 1.5 [get_ports {i_X_DATA[3]}]
set_max_transition 1.5 [get_ports {i_X_DATA[2]}]
set_max_transition 1.5 [get_ports {i_X_DATA[1]}]
set_max_transition 1.5 [get_ports {i_X_DATA[0]}]
set_max_transition 1.5 [get_ports i_X_DATA_VALID]
set_max_transition 1.5 [get_ports o_X_DATA_READY]
set_max_transition 1.5 [get_ports {o_Y_DATA[31]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[30]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[29]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[28]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[27]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[26]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[25]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[24]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[23]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[22]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[21]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[20]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[19]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[18]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[17]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[16]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[15]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[14]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[13]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[12]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[11]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[10]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[9]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[8]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[7]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[6]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[5]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[4]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[3]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[2]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[1]}]
set_max_transition 1.5 [get_ports {o_Y_DATA[0]}]
set_max_transition 1.5 [get_ports o_Y_DATA_VALID]
set_max_transition 1.5 [get_ports i_Y_ACK]
set_max_transition 1.5 [get_ports i_RSTN]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[31]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[30]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[29]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[28]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[27]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[26]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[25]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[24]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[23]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[22]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[21]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[20]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[19]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[18]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[17]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[16]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[15]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[14]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[13]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[12]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[11]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[10]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[9]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[8]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_X_DATA[0]}]
set_load -min -pin_load 0.00195 [get_ports i_X_DATA_VALID]
set_load -min -pin_load 0.00423 [get_ports o_X_DATA_READY]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[31]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[30]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[29]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[28]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[27]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[26]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[25]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[24]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[23]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[22]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[21]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[20]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[19]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[18]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[17]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[16]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[15]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[14]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[13]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[12]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[11]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[10]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[9]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[8]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[7]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[6]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[5]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[4]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[3]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[2]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[1]}]
set_load -min -pin_load 0.00202 [get_ports {o_Y_DATA[0]}]
set_load -min -pin_load 0.00422 [get_ports o_Y_DATA_VALID]
set_load -min -pin_load 0.00195 [get_ports i_Y_ACK]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.16854 [get_ports i_RSTN]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_false_path   -through [list [get_ports i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells async_rst_synchronizer/o_RST_reg]
set_input_delay -clock clk  -max 4  [get_ports i_Y_ACK]
set_input_delay -clock clk  -min -rise 0.167955  [get_ports i_Y_ACK]
set_input_delay -clock clk  -min -fall 0.119706  [get_ports i_Y_ACK]
set_input_delay -clock clk  -max 4  [get_ports i_X_DATA_VALID]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports i_X_DATA_VALID]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports i_X_DATA_VALID]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[0]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[0]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[1]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[1]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[2]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[2]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[3]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[3]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[4]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[4]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[5]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[5]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[6]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[6]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[7]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[7]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[8]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[8]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[8]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[9]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[9]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[9]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[10]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[10]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[10]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[11]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[11]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[11]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[12]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[12]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[12]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[13]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[13]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[13]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[14]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[14]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[14]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[15]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[15]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[15]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[16]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[16]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[16]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[17]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[17]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[17]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[18]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[18]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[18]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[19]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[19]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[19]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[20]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[20]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[20]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[21]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[21]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[21]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[22]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[22]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[22]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[23]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[23]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[23]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[24]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[24]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[24]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[25]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[25]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[25]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[26]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[26]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[26]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[27]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[27]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[27]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[28]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[28]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[28]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[29]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[29]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[29]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[30]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[30]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[30]}]
set_input_delay -clock clk  -max 4  [get_ports {i_X_DATA[31]}]
set_input_delay -clock clk  -min -rise 0.167899  [get_ports {i_X_DATA[31]}]
set_input_delay -clock clk  -min -fall 0.119949  [get_ports {i_X_DATA[31]}]
set_output_delay -clock clk  -max 4  [get_ports o_Y_DATA_VALID]
set_output_delay -clock clk  -min -rise 0.323007  [get_ports o_Y_DATA_VALID]
set_output_delay -clock clk  -min -fall 0.27484  [get_ports o_Y_DATA_VALID]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[0]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[0]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[1]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[1]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[2]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[2]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[3]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[3]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[4]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[4]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[5]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[5]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[6]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[6]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[7]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[7]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[8]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[8]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[8]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[9]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[9]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[9]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[10]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[10]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[10]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[11]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[11]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[11]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[12]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[12]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[12]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[13]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[13]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[13]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[14]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[14]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[14]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[15]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[15]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[15]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[16]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[16]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[16]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[17]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[17]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[17]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[18]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[18]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[18]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[19]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[19]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[19]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[20]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[20]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[20]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[21]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[21]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[21]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[22]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[22]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[22]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[23]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[23]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[23]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[24]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[24]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[24]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[25]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[25]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[25]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[26]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[26]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[26]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[27]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[27]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[27]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[28]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[28]}]
set_output_delay -clock clk  -min -fall 0.110763  [get_ports {o_Y_DATA[28]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[29]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[29]}]
set_output_delay -clock clk  -min -fall 0.110886  [get_ports {o_Y_DATA[29]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[30]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[30]}]
set_output_delay -clock clk  -min -fall 0.110886  [get_ports {o_Y_DATA[30]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Y_DATA[31]}]
set_output_delay -clock clk  -min -rise 0.0922675  [get_ports {o_Y_DATA[31]}]
set_output_delay -clock clk  -min -fall 0.110886  [get_ports {o_Y_DATA[31]}]
set_output_delay -clock clk  -max 4  [get_ports o_X_DATA_READY]
set_output_delay -clock clk  -min -rise 0.303589  [get_ports o_X_DATA_READY]
set_output_delay -clock clk  -min -fall 0.236111  [get_ports o_X_DATA_READY]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
