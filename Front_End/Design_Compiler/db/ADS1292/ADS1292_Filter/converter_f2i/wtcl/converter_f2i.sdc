###################################################################

# Created by write_sdc on Wed Aug 26 17:15:42 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_wire_load_mode enclosed
set_max_dynamic_power 0
set_max_leakage_power 0
set_wire_load_selection_group 4LM
set_max_area 0
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[31]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[31]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[30]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[30]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[29]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[29]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[28]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[28]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[27]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[27]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[26]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[26]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[25]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[25]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[24]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[24]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_A[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_A[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_A_STB]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_A_STB]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_A_ACK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_A_ACK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[31]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[31]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[30]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[30]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[29]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[29]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[28]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[28]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[27]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[27]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[26]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[26]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[25]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[25]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[24]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[24]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_Z[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_Z[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_Z_STB]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_Z_STB]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_Z_ACK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_Z_ACK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RST]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RST]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[31]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[30]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[29]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[28]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[27]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[26]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[25]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[24]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[23]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[22]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[21]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[20]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[19]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[18]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[17]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[16]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[15]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[14]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[13]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[12]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[11]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[10]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[9]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[8]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_A_STB]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_Z_ACK]
set_driving_cell -min -rise -lib_cell fd3qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin SN -no_design_rule [get_ports i_RST]
set_driving_cell -min -fall -lib_cell fd3qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2      \
-no_design_rule [get_ports i_RST]
set_disable_timing [get_ports i_RST]
set_fanout_load 3 [get_ports o_A_ACK]
set_fanout_load 1 [get_ports {o_Z[31]}]
set_fanout_load 1 [get_ports {o_Z[30]}]
set_fanout_load 1 [get_ports {o_Z[29]}]
set_fanout_load 1 [get_ports {o_Z[28]}]
set_fanout_load 1 [get_ports {o_Z[27]}]
set_fanout_load 1 [get_ports {o_Z[26]}]
set_fanout_load 1 [get_ports {o_Z[25]}]
set_fanout_load 1 [get_ports {o_Z[24]}]
set_fanout_load 1 [get_ports {o_Z[23]}]
set_fanout_load 1 [get_ports {o_Z[22]}]
set_fanout_load 1 [get_ports {o_Z[21]}]
set_fanout_load 1 [get_ports {o_Z[20]}]
set_fanout_load 1 [get_ports {o_Z[19]}]
set_fanout_load 1 [get_ports {o_Z[18]}]
set_fanout_load 1 [get_ports {o_Z[17]}]
set_fanout_load 1 [get_ports {o_Z[16]}]
set_fanout_load 1 [get_ports {o_Z[15]}]
set_fanout_load 1 [get_ports {o_Z[14]}]
set_fanout_load 1 [get_ports {o_Z[13]}]
set_fanout_load 1 [get_ports {o_Z[12]}]
set_fanout_load 1 [get_ports {o_Z[11]}]
set_fanout_load 1 [get_ports {o_Z[10]}]
set_fanout_load 1 [get_ports {o_Z[9]}]
set_fanout_load 1 [get_ports {o_Z[8]}]
set_fanout_load 0 [get_ports {o_Z[7]}]
set_fanout_load 0 [get_ports {o_Z[6]}]
set_fanout_load 0 [get_ports {o_Z[5]}]
set_fanout_load 0 [get_ports {o_Z[4]}]
set_fanout_load 0 [get_ports {o_Z[3]}]
set_fanout_load 0 [get_ports {o_Z[2]}]
set_fanout_load 0 [get_ports {o_Z[1]}]
set_fanout_load 0 [get_ports {o_Z[0]}]
set_fanout_load 1 [get_ports o_Z_STB]
set_port_fanout_number 1 [get_ports {i_A[31]}]
set_port_fanout_number 1 [get_ports {i_A[30]}]
set_port_fanout_number 1 [get_ports {i_A[29]}]
set_port_fanout_number 1 [get_ports {i_A[28]}]
set_port_fanout_number 1 [get_ports {i_A[27]}]
set_port_fanout_number 1 [get_ports {i_A[26]}]
set_port_fanout_number 1 [get_ports {i_A[25]}]
set_port_fanout_number 1 [get_ports {i_A[24]}]
set_port_fanout_number 1 [get_ports {i_A[23]}]
set_port_fanout_number 1 [get_ports {i_A[22]}]
set_port_fanout_number 1 [get_ports {i_A[21]}]
set_port_fanout_number 1 [get_ports {i_A[20]}]
set_port_fanout_number 1 [get_ports {i_A[19]}]
set_port_fanout_number 1 [get_ports {i_A[18]}]
set_port_fanout_number 1 [get_ports {i_A[17]}]
set_port_fanout_number 1 [get_ports {i_A[16]}]
set_port_fanout_number 1 [get_ports {i_A[15]}]
set_port_fanout_number 1 [get_ports {i_A[14]}]
set_port_fanout_number 1 [get_ports {i_A[13]}]
set_port_fanout_number 1 [get_ports {i_A[12]}]
set_port_fanout_number 1 [get_ports {i_A[11]}]
set_port_fanout_number 1 [get_ports {i_A[10]}]
set_port_fanout_number 1 [get_ports {i_A[9]}]
set_port_fanout_number 1 [get_ports {i_A[8]}]
set_port_fanout_number 1 [get_ports {i_A[7]}]
set_port_fanout_number 1 [get_ports {i_A[6]}]
set_port_fanout_number 1 [get_ports {i_A[5]}]
set_port_fanout_number 1 [get_ports {i_A[4]}]
set_port_fanout_number 1 [get_ports {i_A[3]}]
set_port_fanout_number 1 [get_ports {i_A[2]}]
set_port_fanout_number 1 [get_ports {i_A[1]}]
set_port_fanout_number 1 [get_ports {i_A[0]}]
set_port_fanout_number 1 [get_ports i_A_STB]
set_port_fanout_number 3 [get_ports o_A_ACK]
set_port_fanout_number 0 [get_ports {o_Z[7]}]
set_port_fanout_number 0 [get_ports {o_Z[6]}]
set_port_fanout_number 0 [get_ports {o_Z[5]}]
set_port_fanout_number 0 [get_ports {o_Z[4]}]
set_port_fanout_number 0 [get_ports {o_Z[3]}]
set_port_fanout_number 0 [get_ports {o_Z[2]}]
set_port_fanout_number 0 [get_ports {o_Z[1]}]
set_port_fanout_number 0 [get_ports {o_Z[0]}]
set_port_fanout_number 1 [get_ports i_Z_ACK]
set_port_fanout_number 4522 [get_ports i_CLK]
set_port_fanout_number 5 [get_ports i_RST]
set_load -pin_load 0.0019 [get_ports {i_A[31]}]
set_load -pin_load 0.0019 [get_ports {i_A[30]}]
set_load -pin_load 0.0019 [get_ports {i_A[29]}]
set_load -pin_load 0.0019 [get_ports {i_A[28]}]
set_load -pin_load 0.0019 [get_ports {i_A[27]}]
set_load -pin_load 0.0019 [get_ports {i_A[26]}]
set_load -pin_load 0.0019 [get_ports {i_A[25]}]
set_load -pin_load 0.0019 [get_ports {i_A[24]}]
set_load -pin_load 0.0019 [get_ports {i_A[23]}]
set_load -pin_load 0.0019 [get_ports {i_A[22]}]
set_load -pin_load 0.0019 [get_ports {i_A[21]}]
set_load -pin_load 0.0019 [get_ports {i_A[20]}]
set_load -pin_load 0.0019 [get_ports {i_A[19]}]
set_load -pin_load 0.0019 [get_ports {i_A[18]}]
set_load -pin_load 0.0019 [get_ports {i_A[17]}]
set_load -pin_load 0.0019 [get_ports {i_A[16]}]
set_load -pin_load 0.0019 [get_ports {i_A[15]}]
set_load -pin_load 0.0019 [get_ports {i_A[14]}]
set_load -pin_load 0.0019 [get_ports {i_A[13]}]
set_load -pin_load 0.0019 [get_ports {i_A[12]}]
set_load -pin_load 0.0019 [get_ports {i_A[11]}]
set_load -pin_load 0.0019 [get_ports {i_A[10]}]
set_load -pin_load 0.0019 [get_ports {i_A[9]}]
set_load -pin_load 0.0019 [get_ports {i_A[8]}]
set_load -pin_load 0.0019 [get_ports {i_A[7]}]
set_load -pin_load 0.0019 [get_ports {i_A[6]}]
set_load -pin_load 0.0019 [get_ports {i_A[5]}]
set_load -pin_load 0.0019 [get_ports {i_A[4]}]
set_load -pin_load 0.0019 [get_ports {i_A[3]}]
set_load -pin_load 0.0019 [get_ports {i_A[2]}]
set_load -pin_load 0.0019 [get_ports {i_A[1]}]
set_load -pin_load 0.0019 [get_ports {i_A[0]}]
set_load -pin_load 0.0019 [get_ports i_A_STB]
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
set_load -pin_load 0.0019 [get_ports i_Z_ACK]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports i_RST]
set_max_capacitance 0.082 [get_ports {i_A[31]}]
set_max_capacitance 0.082 [get_ports {i_A[30]}]
set_max_capacitance 0.082 [get_ports {i_A[29]}]
set_max_capacitance 0.082 [get_ports {i_A[28]}]
set_max_capacitance 0.082 [get_ports {i_A[27]}]
set_max_capacitance 0.082 [get_ports {i_A[26]}]
set_max_capacitance 0.082 [get_ports {i_A[25]}]
set_max_capacitance 0.082 [get_ports {i_A[24]}]
set_max_capacitance 0.082 [get_ports {i_A[23]}]
set_max_capacitance 0.082 [get_ports {i_A[22]}]
set_max_capacitance 0.082 [get_ports {i_A[21]}]
set_max_capacitance 0.082 [get_ports {i_A[20]}]
set_max_capacitance 0.082 [get_ports {i_A[19]}]
set_max_capacitance 0.082 [get_ports {i_A[18]}]
set_max_capacitance 0.082 [get_ports {i_A[17]}]
set_max_capacitance 0.082 [get_ports {i_A[16]}]
set_max_capacitance 0.082 [get_ports {i_A[15]}]
set_max_capacitance 0.082 [get_ports {i_A[14]}]
set_max_capacitance 0.082 [get_ports {i_A[13]}]
set_max_capacitance 0.082 [get_ports {i_A[12]}]
set_max_capacitance 0.082 [get_ports {i_A[11]}]
set_max_capacitance 0.082 [get_ports {i_A[10]}]
set_max_capacitance 0.082 [get_ports {i_A[9]}]
set_max_capacitance 0.082 [get_ports {i_A[8]}]
set_max_capacitance 0.082 [get_ports {i_A[7]}]
set_max_capacitance 0.082 [get_ports {i_A[6]}]
set_max_capacitance 0.082 [get_ports {i_A[5]}]
set_max_capacitance 0.082 [get_ports {i_A[4]}]
set_max_capacitance 0.082 [get_ports {i_A[3]}]
set_max_capacitance 0.082 [get_ports {i_A[2]}]
set_max_capacitance 0.082 [get_ports {i_A[1]}]
set_max_capacitance 0.082 [get_ports {i_A[0]}]
set_max_capacitance 0.082 [get_ports i_A_STB]
set_max_capacitance 0.082 [get_ports i_Z_ACK]
set_max_capacitance 0.082 [get_ports i_RST]
set_max_transition 1.5 [get_ports {i_A[31]}]
set_max_transition 1.5 [get_ports {i_A[30]}]
set_max_transition 1.5 [get_ports {i_A[29]}]
set_max_transition 1.5 [get_ports {i_A[28]}]
set_max_transition 1.5 [get_ports {i_A[27]}]
set_max_transition 1.5 [get_ports {i_A[26]}]
set_max_transition 1.5 [get_ports {i_A[25]}]
set_max_transition 1.5 [get_ports {i_A[24]}]
set_max_transition 1.5 [get_ports {i_A[23]}]
set_max_transition 1.5 [get_ports {i_A[22]}]
set_max_transition 1.5 [get_ports {i_A[21]}]
set_max_transition 1.5 [get_ports {i_A[20]}]
set_max_transition 1.5 [get_ports {i_A[19]}]
set_max_transition 1.5 [get_ports {i_A[18]}]
set_max_transition 1.5 [get_ports {i_A[17]}]
set_max_transition 1.5 [get_ports {i_A[16]}]
set_max_transition 1.5 [get_ports {i_A[15]}]
set_max_transition 1.5 [get_ports {i_A[14]}]
set_max_transition 1.5 [get_ports {i_A[13]}]
set_max_transition 1.5 [get_ports {i_A[12]}]
set_max_transition 1.5 [get_ports {i_A[11]}]
set_max_transition 1.5 [get_ports {i_A[10]}]
set_max_transition 1.5 [get_ports {i_A[9]}]
set_max_transition 1.5 [get_ports {i_A[8]}]
set_max_transition 1.5 [get_ports {i_A[7]}]
set_max_transition 1.5 [get_ports {i_A[6]}]
set_max_transition 1.5 [get_ports {i_A[5]}]
set_max_transition 1.5 [get_ports {i_A[4]}]
set_max_transition 1.5 [get_ports {i_A[3]}]
set_max_transition 1.5 [get_ports {i_A[2]}]
set_max_transition 1.5 [get_ports {i_A[1]}]
set_max_transition 1.5 [get_ports {i_A[0]}]
set_max_transition 1.5 [get_ports i_A_STB]
set_max_transition 1.5 [get_ports o_A_ACK]
set_max_transition 1.5 [get_ports {o_Z[31]}]
set_max_transition 1.5 [get_ports {o_Z[30]}]
set_max_transition 1.5 [get_ports {o_Z[29]}]
set_max_transition 1.5 [get_ports {o_Z[28]}]
set_max_transition 1.5 [get_ports {o_Z[27]}]
set_max_transition 1.5 [get_ports {o_Z[26]}]
set_max_transition 1.5 [get_ports {o_Z[25]}]
set_max_transition 1.5 [get_ports {o_Z[24]}]
set_max_transition 1.5 [get_ports {o_Z[23]}]
set_max_transition 1.5 [get_ports {o_Z[22]}]
set_max_transition 1.5 [get_ports {o_Z[21]}]
set_max_transition 1.5 [get_ports {o_Z[20]}]
set_max_transition 1.5 [get_ports {o_Z[19]}]
set_max_transition 1.5 [get_ports {o_Z[18]}]
set_max_transition 1.5 [get_ports {o_Z[17]}]
set_max_transition 1.5 [get_ports {o_Z[16]}]
set_max_transition 1.5 [get_ports {o_Z[15]}]
set_max_transition 1.5 [get_ports {o_Z[14]}]
set_max_transition 1.5 [get_ports {o_Z[13]}]
set_max_transition 1.5 [get_ports {o_Z[12]}]
set_max_transition 1.5 [get_ports {o_Z[11]}]
set_max_transition 1.5 [get_ports {o_Z[10]}]
set_max_transition 1.5 [get_ports {o_Z[9]}]
set_max_transition 1.5 [get_ports {o_Z[8]}]
set_max_transition 1.5 [get_ports o_Z_STB]
set_max_transition 1.5 [get_ports i_Z_ACK]
set_max_transition 1.5 [get_ports i_RST]
set_load -min -pin_load 0.00195 [get_ports {i_A[31]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[30]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[29]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[28]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[27]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[26]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[25]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[24]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[23]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[22]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[21]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[20]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[19]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[18]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[17]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[16]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[15]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[14]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[13]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[12]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[11]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[10]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[9]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[8]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_A[0]}]
set_load -min -pin_load 0.00195 [get_ports i_A_STB]
set_load -min -pin_load 0.00644 [get_ports o_A_ACK]
set_load -min -pin_load 0.00202 [get_ports {o_Z[31]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[30]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[29]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[28]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[27]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[26]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[25]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[24]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[23]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[22]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[21]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[20]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[19]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[18]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[17]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[16]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[15]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[14]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[13]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[12]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[11]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[10]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[9]}]
set_load -min -pin_load 0.00202 [get_ports {o_Z[8]}]
set_load -min -pin_load 0.00209 [get_ports o_Z_STB]
set_load -min -pin_load 0.00195 [get_ports i_Z_ACK]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.01065 [get_ports i_RST]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
set_input_delay -clock clk  -max 4  [get_ports i_Z_ACK]
set_input_delay -clock clk  -min -rise 0.167882  [get_ports i_Z_ACK]
set_input_delay -clock clk  -min -fall 0.119645  [get_ports i_Z_ACK]
set_input_delay -clock clk  -max 4  [get_ports i_A_STB]
set_input_delay -clock clk  -min -rise 0.167882  [get_ports i_A_STB]
set_input_delay -clock clk  -min -fall 0.119645  [get_ports i_A_STB]
set_input_delay -clock clk  -max 4  [get_ports {i_A[0]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[0]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[1]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[1]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[2]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[2]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[3]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[3]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[4]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[4]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[5]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[5]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[6]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[6]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[7]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[7]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[8]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[8]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[8]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[9]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[9]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[9]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[10]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[10]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[10]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[11]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[11]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[11]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[12]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[12]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[12]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[13]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[13]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[13]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[14]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[14]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[14]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[15]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[15]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[15]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[16]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[16]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[16]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[17]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[17]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[17]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[18]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[18]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[18]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[19]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[19]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[19]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[20]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[20]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[20]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[21]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[21]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[21]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[22]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[22]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[22]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[23]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[23]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[23]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[24]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[24]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[24]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[25]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[25]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[25]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[26]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[26]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[26]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[27]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[27]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[27]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[28]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[28]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[28]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[29]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[29]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[29]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[30]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[30]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[30]}]
set_input_delay -clock clk  -max 4  [get_ports {i_A[31]}]
set_input_delay -clock clk  -min -rise 0.167656  [get_ports {i_A[31]}]
set_input_delay -clock clk  -min -fall 0.119964  [get_ports {i_A[31]}]
set_output_delay -clock clk  -max 4  [get_ports o_Z_STB]
set_output_delay -clock clk  -min -rise 0.372676  [get_ports o_Z_STB]
set_output_delay -clock clk  -min -fall 0.319733  [get_ports o_Z_STB]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -min -rise 0.0752182  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -min -fall 0.0900751  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -max 4  [get_ports o_A_ACK]
set_output_delay -clock clk  -min -rise 0.197757  [get_ports o_A_ACK]
set_output_delay -clock clk  -min -fall 0.190411  [get_ports o_A_ACK]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_Z[0]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RST]
