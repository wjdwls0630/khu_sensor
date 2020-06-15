###################################################################

# Created by write_sdc on Tue Jun  9 05:55:16 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_wire_load_mode enclosed
set_max_area 0
set_wire_load_selection_group 4LM
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[31]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[31]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[30]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[30]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[29]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[29]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[28]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[28]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[27]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[27]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[26]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[26]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[25]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[25]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[24]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[24]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[23]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[23]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[22]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[22]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[21]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[21]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[20]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[20]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[19]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[19]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[18]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[18]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[17]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[17]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[16]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[16]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[15]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[15]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[14]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[14]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[13]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[13]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[12]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[12]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[11]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[11]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[10]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[10]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[9]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[9]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[8]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[8]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[7]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[7]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[6]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[6]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[5]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[5]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[4]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[4]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[3]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[3]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[2]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[2]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[1]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[1]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_A[0]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_A[0]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[31]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[31]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[30]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[30]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[29]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[29]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[28]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[28]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[27]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[27]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[26]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[26]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[25]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[25]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[24]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[24]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[23]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[23]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[22]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[22]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[21]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[21]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[20]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[20]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[19]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[19]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[18]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[18]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[17]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[17]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[16]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[16]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[15]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[15]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[14]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[14]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[13]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[13]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[12]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[12]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[11]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[11]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[10]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[10]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[9]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[9]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[8]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[8]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[7]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[7]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[6]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[6]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[5]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[5]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[4]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[4]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[3]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[3]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[2]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[2]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[1]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[1]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {i_B[0]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {i_B[0]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports i_AB_STB]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports i_AB_STB]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports o_AB_ACK]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports o_AB_ACK]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[31]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[31]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[30]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[30]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[29]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[29]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[28]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[28]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[27]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[27]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[26]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[26]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[25]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[25]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[24]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[24]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[23]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[23]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[22]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[22]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[21]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[21]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[20]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[20]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[19]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[19]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[18]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[18]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[17]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[17]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[16]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[16]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[15]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[15]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[14]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[14]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[13]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[13]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[12]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[12]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[11]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[11]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[10]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[10]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[9]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[9]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[8]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[8]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[7]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[7]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[6]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[6]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[5]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[5]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[4]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[4]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[3]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[3]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[2]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[2]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[1]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[1]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports {o_Z[0]}]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports {o_Z[0]}]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports o_Z_STB]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports o_Z_STB]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports i_Z_ACK]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports i_Z_ACK]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports i_CLK]
set_wire_load_model -name l13_e_50k_4lm -library std150e_wst_105_p125          \
[get_ports i_RST]
set_wire_load_model -min -name l13_e_50k_4lm -library std150e_bst_135_n040     \
[get_ports i_RST]
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
-from_pin SN -no_design_rule [get_ports {i_A[20]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[19]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[17]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[16]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[15]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_A[14]}]
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
-from_pin SN -no_design_rule [get_ports {i_B[31]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[30]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[29]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[28]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[27]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[26]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[25]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[24]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[23]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[22]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[21]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[20]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[19]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[18]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[17]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[16]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[15]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[14]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[13]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[12]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[11]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[10]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[9]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[8]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_B[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_AB_STB]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_Z_ACK]
set_driving_cell -min -lib_cell ivd8_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -no_design_rule [get_ports i_RST]
set_disable_timing [get_ports i_RST]
set_fanout_load 1 [get_ports o_AB_ACK]
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
set_fanout_load 1 [get_ports {o_Z[7]}]
set_fanout_load 1 [get_ports {o_Z[6]}]
set_fanout_load 1 [get_ports {o_Z[5]}]
set_fanout_load 1 [get_ports {o_Z[4]}]
set_fanout_load 1 [get_ports {o_Z[3]}]
set_fanout_load 1 [get_ports {o_Z[2]}]
set_fanout_load 1 [get_ports {o_Z[1]}]
set_fanout_load 1 [get_ports {o_Z[0]}]
set_fanout_load 1 [get_ports o_Z_STB]
set_port_fanout_number 0 [get_ports {i_A[31]}]
set_port_fanout_number 0 [get_ports {i_A[30]}]
set_port_fanout_number 2 [get_ports {i_A[29]}]
set_port_fanout_number 2 [get_ports {i_A[28]}]
set_port_fanout_number 2 [get_ports {i_A[27]}]
set_port_fanout_number 2 [get_ports {i_A[26]}]
set_port_fanout_number 2 [get_ports {i_A[25]}]
set_port_fanout_number 2 [get_ports {i_A[24]}]
set_port_fanout_number 2 [get_ports {i_A[23]}]
set_port_fanout_number 2 [get_ports {i_A[22]}]
set_port_fanout_number 0 [get_ports {i_A[21]}]
set_port_fanout_number 2 [get_ports {i_A[20]}]
set_port_fanout_number 2 [get_ports {i_A[19]}]
set_port_fanout_number 0 [get_ports {i_A[18]}]
set_port_fanout_number 2 [get_ports {i_A[17]}]
set_port_fanout_number 2 [get_ports {i_A[16]}]
set_port_fanout_number 2 [get_ports {i_A[15]}]
set_port_fanout_number 2 [get_ports {i_A[14]}]
set_port_fanout_number 0 [get_ports {i_A[13]}]
set_port_fanout_number 2 [get_ports {i_A[12]}]
set_port_fanout_number 2 [get_ports {i_A[11]}]
set_port_fanout_number 2 [get_ports {i_A[10]}]
set_port_fanout_number 2 [get_ports {i_A[9]}]
set_port_fanout_number 2 [get_ports {i_A[8]}]
set_port_fanout_number 2 [get_ports {i_A[7]}]
set_port_fanout_number 2 [get_ports {i_A[6]}]
set_port_fanout_number 2 [get_ports {i_A[5]}]
set_port_fanout_number 2 [get_ports {i_A[4]}]
set_port_fanout_number 2 [get_ports {i_A[3]}]
set_port_fanout_number 2 [get_ports {i_A[2]}]
set_port_fanout_number 2 [get_ports {i_A[1]}]
set_port_fanout_number 2 [get_ports {i_A[0]}]
set_port_fanout_number 2 [get_ports {i_B[31]}]
set_port_fanout_number 2 [get_ports {i_B[30]}]
set_port_fanout_number 2 [get_ports {i_B[29]}]
set_port_fanout_number 2 [get_ports {i_B[28]}]
set_port_fanout_number 2 [get_ports {i_B[27]}]
set_port_fanout_number 2 [get_ports {i_B[26]}]
set_port_fanout_number 2 [get_ports {i_B[25]}]
set_port_fanout_number 2 [get_ports {i_B[24]}]
set_port_fanout_number 2 [get_ports {i_B[23]}]
set_port_fanout_number 2 [get_ports {i_B[22]}]
set_port_fanout_number 2 [get_ports {i_B[21]}]
set_port_fanout_number 2 [get_ports {i_B[20]}]
set_port_fanout_number 2 [get_ports {i_B[19]}]
set_port_fanout_number 2 [get_ports {i_B[18]}]
set_port_fanout_number 2 [get_ports {i_B[17]}]
set_port_fanout_number 2 [get_ports {i_B[16]}]
set_port_fanout_number 2 [get_ports {i_B[15]}]
set_port_fanout_number 2 [get_ports {i_B[14]}]
set_port_fanout_number 2 [get_ports {i_B[13]}]
set_port_fanout_number 2 [get_ports {i_B[12]}]
set_port_fanout_number 2 [get_ports {i_B[11]}]
set_port_fanout_number 2 [get_ports {i_B[10]}]
set_port_fanout_number 2 [get_ports {i_B[9]}]
set_port_fanout_number 2 [get_ports {i_B[8]}]
set_port_fanout_number 2 [get_ports {i_B[7]}]
set_port_fanout_number 2 [get_ports {i_B[6]}]
set_port_fanout_number 2 [get_ports {i_B[5]}]
set_port_fanout_number 2 [get_ports {i_B[4]}]
set_port_fanout_number 2 [get_ports {i_B[3]}]
set_port_fanout_number 2 [get_ports {i_B[2]}]
set_port_fanout_number 2 [get_ports {i_B[1]}]
set_port_fanout_number 2 [get_ports {i_B[0]}]
set_port_fanout_number 3 [get_ports i_AB_STB]
set_port_fanout_number 3 [get_ports i_Z_ACK]
set_port_fanout_number 949 [get_ports i_CLK]
set_load -pin_load 0.00338 [get_ports {i_A[29]}]
set_load -pin_load 0.00338 [get_ports {i_A[28]}]
set_load -pin_load 0.00338 [get_ports {i_A[27]}]
set_load -pin_load 0.00338 [get_ports {i_A[26]}]
set_load -pin_load 0.00352 [get_ports {i_A[25]}]
set_load -pin_load 0.00352 [get_ports {i_A[24]}]
set_load -pin_load 0.00338 [get_ports {i_A[23]}]
set_load -pin_load 0.00338 [get_ports {i_A[22]}]
set_load -pin_load 0.00338 [get_ports {i_A[20]}]
set_load -pin_load 0.00338 [get_ports {i_A[19]}]
set_load -pin_load 0.00338 [get_ports {i_A[17]}]
set_load -pin_load 0.00338 [get_ports {i_A[16]}]
set_load -pin_load 0.00352 [get_ports {i_A[15]}]
set_load -pin_load 0.00352 [get_ports {i_A[14]}]
set_load -pin_load 0.00352 [get_ports {i_A[12]}]
set_load -pin_load 0.00338 [get_ports {i_A[11]}]
set_load -pin_load 0.00338 [get_ports {i_A[10]}]
set_load -pin_load 0.00352 [get_ports {i_A[9]}]
set_load -pin_load 0.00352 [get_ports {i_A[8]}]
set_load -pin_load 0.00338 [get_ports {i_A[7]}]
set_load -pin_load 0.00338 [get_ports {i_A[6]}]
set_load -pin_load 0.00338 [get_ports {i_A[5]}]
set_load -pin_load 0.00352 [get_ports {i_A[4]}]
set_load -pin_load 0.00338 [get_ports {i_A[3]}]
set_load -pin_load 0.00338 [get_ports {i_A[2]}]
set_load -pin_load 0.00338 [get_ports {i_A[1]}]
set_load -pin_load 0.00338 [get_ports {i_A[0]}]
set_load -pin_load 0.00344 [get_ports {i_B[31]}]
set_load -pin_load 0.00344 [get_ports {i_B[30]}]
set_load -pin_load 0.00344 [get_ports {i_B[29]}]
set_load -pin_load 0.00344 [get_ports {i_B[28]}]
set_load -pin_load 0.00344 [get_ports {i_B[27]}]
set_load -pin_load 0.00344 [get_ports {i_B[26]}]
set_load -pin_load 0.00344 [get_ports {i_B[25]}]
set_load -pin_load 0.00344 [get_ports {i_B[24]}]
set_load -pin_load 0.00344 [get_ports {i_B[23]}]
set_load -pin_load 0.00344 [get_ports {i_B[22]}]
set_load -pin_load 0.00344 [get_ports {i_B[21]}]
set_load -pin_load 0.00344 [get_ports {i_B[20]}]
set_load -pin_load 0.00344 [get_ports {i_B[19]}]
set_load -pin_load 0.00344 [get_ports {i_B[18]}]
set_load -pin_load 0.00344 [get_ports {i_B[17]}]
set_load -pin_load 0.00344 [get_ports {i_B[16]}]
set_load -pin_load 0.00344 [get_ports {i_B[15]}]
set_load -pin_load 0.00344 [get_ports {i_B[14]}]
set_load -pin_load 0.00344 [get_ports {i_B[13]}]
set_load -pin_load 0.00344 [get_ports {i_B[12]}]
set_load -pin_load 0.00344 [get_ports {i_B[11]}]
set_load -pin_load 0.00344 [get_ports {i_B[10]}]
set_load -pin_load 0.00344 [get_ports {i_B[9]}]
set_load -pin_load 0.00344 [get_ports {i_B[8]}]
set_load -pin_load 0.00344 [get_ports {i_B[7]}]
set_load -pin_load 0.00344 [get_ports {i_B[6]}]
set_load -pin_load 0.00344 [get_ports {i_B[5]}]
set_load -pin_load 0.00344 [get_ports {i_B[4]}]
set_load -pin_load 0.00344 [get_ports {i_B[3]}]
set_load -pin_load 0.00344 [get_ports {i_B[2]}]
set_load -pin_load 0.00344 [get_ports {i_B[1]}]
set_load -pin_load 0.00344 [get_ports {i_B[0]}]
set_load -pin_load 0.00706 [get_ports i_AB_STB]
set_load -pin_load 0.01035 [get_ports o_AB_ACK]
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
set_load -pin_load 0.00601 [get_ports i_Z_ACK]
set_load -pin_load 0 [get_ports i_CLK]
set_max_capacitance 0.082 [get_ports {i_A[29]}]
set_max_capacitance 0.082 [get_ports {i_A[28]}]
set_max_capacitance 0.082 [get_ports {i_A[27]}]
set_max_capacitance 0.082 [get_ports {i_A[26]}]
set_max_capacitance 0.082 [get_ports {i_A[25]}]
set_max_capacitance 0.082 [get_ports {i_A[24]}]
set_max_capacitance 0.082 [get_ports {i_A[23]}]
set_max_capacitance 0.082 [get_ports {i_A[22]}]
set_max_capacitance 0.082 [get_ports {i_A[20]}]
set_max_capacitance 0.082 [get_ports {i_A[19]}]
set_max_capacitance 0.082 [get_ports {i_A[17]}]
set_max_capacitance 0.082 [get_ports {i_A[16]}]
set_max_capacitance 0.082 [get_ports {i_A[15]}]
set_max_capacitance 0.082 [get_ports {i_A[14]}]
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
set_max_capacitance 0.082 [get_ports {i_B[31]}]
set_max_capacitance 0.082 [get_ports {i_B[30]}]
set_max_capacitance 0.082 [get_ports {i_B[29]}]
set_max_capacitance 0.082 [get_ports {i_B[28]}]
set_max_capacitance 0.082 [get_ports {i_B[27]}]
set_max_capacitance 0.082 [get_ports {i_B[26]}]
set_max_capacitance 0.082 [get_ports {i_B[25]}]
set_max_capacitance 0.082 [get_ports {i_B[24]}]
set_max_capacitance 0.082 [get_ports {i_B[23]}]
set_max_capacitance 0.082 [get_ports {i_B[22]}]
set_max_capacitance 0.082 [get_ports {i_B[21]}]
set_max_capacitance 0.082 [get_ports {i_B[20]}]
set_max_capacitance 0.082 [get_ports {i_B[19]}]
set_max_capacitance 0.082 [get_ports {i_B[18]}]
set_max_capacitance 0.082 [get_ports {i_B[17]}]
set_max_capacitance 0.082 [get_ports {i_B[16]}]
set_max_capacitance 0.082 [get_ports {i_B[15]}]
set_max_capacitance 0.082 [get_ports {i_B[14]}]
set_max_capacitance 0.082 [get_ports {i_B[13]}]
set_max_capacitance 0.082 [get_ports {i_B[12]}]
set_max_capacitance 0.082 [get_ports {i_B[11]}]
set_max_capacitance 0.082 [get_ports {i_B[10]}]
set_max_capacitance 0.082 [get_ports {i_B[9]}]
set_max_capacitance 0.082 [get_ports {i_B[8]}]
set_max_capacitance 0.082 [get_ports {i_B[7]}]
set_max_capacitance 0.082 [get_ports {i_B[6]}]
set_max_capacitance 0.082 [get_ports {i_B[5]}]
set_max_capacitance 0.082 [get_ports {i_B[4]}]
set_max_capacitance 0.082 [get_ports {i_B[3]}]
set_max_capacitance 0.082 [get_ports {i_B[2]}]
set_max_capacitance 0.082 [get_ports {i_B[1]}]
set_max_capacitance 0.082 [get_ports {i_B[0]}]
set_max_capacitance 0.082 [get_ports i_AB_STB]
set_max_capacitance 0.082 [get_ports i_Z_ACK]
set_max_fanout 1 [get_ports i_RST]
set_max_transition 1.5 [get_ports {i_A[29]}]
set_max_transition 1.5 [get_ports {i_A[28]}]
set_max_transition 1.5 [get_ports {i_A[27]}]
set_max_transition 1.5 [get_ports {i_A[26]}]
set_max_transition 1.5 [get_ports {i_A[25]}]
set_max_transition 1.5 [get_ports {i_A[24]}]
set_max_transition 1.5 [get_ports {i_A[23]}]
set_max_transition 1.5 [get_ports {i_A[22]}]
set_max_transition 1.5 [get_ports {i_A[20]}]
set_max_transition 1.5 [get_ports {i_A[19]}]
set_max_transition 1.5 [get_ports {i_A[17]}]
set_max_transition 1.5 [get_ports {i_A[16]}]
set_max_transition 1.5 [get_ports {i_A[15]}]
set_max_transition 1.5 [get_ports {i_A[14]}]
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
set_max_transition 1.5 [get_ports {i_B[31]}]
set_max_transition 1.5 [get_ports {i_B[30]}]
set_max_transition 1.5 [get_ports {i_B[29]}]
set_max_transition 1.5 [get_ports {i_B[28]}]
set_max_transition 1.5 [get_ports {i_B[27]}]
set_max_transition 1.5 [get_ports {i_B[26]}]
set_max_transition 1.5 [get_ports {i_B[25]}]
set_max_transition 1.5 [get_ports {i_B[24]}]
set_max_transition 1.5 [get_ports {i_B[23]}]
set_max_transition 1.5 [get_ports {i_B[22]}]
set_max_transition 1.5 [get_ports {i_B[21]}]
set_max_transition 1.5 [get_ports {i_B[20]}]
set_max_transition 1.5 [get_ports {i_B[19]}]
set_max_transition 1.5 [get_ports {i_B[18]}]
set_max_transition 1.5 [get_ports {i_B[17]}]
set_max_transition 1.5 [get_ports {i_B[16]}]
set_max_transition 1.5 [get_ports {i_B[15]}]
set_max_transition 1.5 [get_ports {i_B[14]}]
set_max_transition 1.5 [get_ports {i_B[13]}]
set_max_transition 1.5 [get_ports {i_B[12]}]
set_max_transition 1.5 [get_ports {i_B[11]}]
set_max_transition 1.5 [get_ports {i_B[10]}]
set_max_transition 1.5 [get_ports {i_B[9]}]
set_max_transition 1.5 [get_ports {i_B[8]}]
set_max_transition 1.5 [get_ports {i_B[7]}]
set_max_transition 1.5 [get_ports {i_B[6]}]
set_max_transition 1.5 [get_ports {i_B[5]}]
set_max_transition 1.5 [get_ports {i_B[4]}]
set_max_transition 1.5 [get_ports {i_B[3]}]
set_max_transition 1.5 [get_ports {i_B[2]}]
set_max_transition 1.5 [get_ports {i_B[1]}]
set_max_transition 1.5 [get_ports {i_B[0]}]
set_max_transition 1.5 [get_ports i_AB_STB]
set_max_transition 1.5 [get_ports o_AB_ACK]
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
set_max_transition 1.5 [get_ports {o_Z[7]}]
set_max_transition 1.5 [get_ports {o_Z[6]}]
set_max_transition 1.5 [get_ports {o_Z[5]}]
set_max_transition 1.5 [get_ports {o_Z[4]}]
set_max_transition 1.5 [get_ports {o_Z[3]}]
set_max_transition 1.5 [get_ports {o_Z[2]}]
set_max_transition 1.5 [get_ports {o_Z[1]}]
set_max_transition 1.5 [get_ports {o_Z[0]}]
set_max_transition 1.5 [get_ports o_Z_STB]
set_max_transition 1.5 [get_ports i_Z_ACK]
set_load -min -pin_load 0.00347 [get_ports {i_A[29]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[28]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[27]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[26]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[25]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[24]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[23]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[22]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[20]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[19]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[17]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[16]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[15]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[14]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[12]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[11]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[10]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[9]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[8]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[7]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[6]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[5]}]
set_load -min -pin_load 0.00362 [get_ports {i_A[4]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[3]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[2]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[1]}]
set_load -min -pin_load 0.00347 [get_ports {i_A[0]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[31]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[30]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[29]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[28]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[27]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[26]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[25]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[24]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[23]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[22]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[21]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[20]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[19]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[18]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[17]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[16]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[15]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[14]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[13]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[12]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[11]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[10]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[9]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[8]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[7]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[6]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[5]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[4]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[3]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[2]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[1]}]
set_load -min -pin_load 0.00355 [get_ports {i_B[0]}]
set_load -min -pin_load 0.00724 [get_ports i_AB_STB]
set_load -min -pin_load 0.00149 [get_ports o_AB_ACK]
set_load -min -pin_load 0.00213 [get_ports {o_Z[31]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[30]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[29]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[28]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[27]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[26]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[25]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[24]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[23]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[22]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[21]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[20]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[19]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[18]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[17]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[16]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[15]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[14]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[13]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[12]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[11]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[10]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[9]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[8]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[7]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[6]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[5]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[4]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[3]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[2]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[1]}]
set_load -min -pin_load 0.00213 [get_ports {o_Z[0]}]
set_load -min -pin_load 0.00149 [get_ports o_Z_STB]
set_load -min -pin_load 0.00618 [get_ports i_Z_ACK]
set_load -min -pin_load 0 [get_ports i_CLK]
set_case_analysis 0 [get_ports {i_A[31]}]
set_case_analysis 0 [get_ports {i_A[30]}]
set_case_analysis 0 [get_ports {i_A[21]}]
set_case_analysis 0 [get_ports {i_A[18]}]
set_case_analysis 0 [get_ports {i_A[13]}]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
set_input_delay 0  [get_ports i_RST]
set_input_delay -clock clk  -max -rise 0.542861  [get_ports i_Z_ACK]
set_input_delay -clock clk  -max -fall 0.366122  [get_ports i_Z_ACK]
set_input_delay -clock clk  -min -rise 0.185421  [get_ports i_Z_ACK]
set_input_delay -clock clk  -min -fall 0.123437  [get_ports i_Z_ACK]
set_input_delay -clock clk  -max -rise 0.542907  [get_ports i_AB_STB]
set_input_delay -clock clk  -max -fall 0.363552  [get_ports i_AB_STB]
set_input_delay -clock clk  -min -rise 0.185512  [get_ports i_AB_STB]
set_input_delay -clock clk  -min -fall 0.122455  [get_ports i_AB_STB]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[0]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[0]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[0]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[0]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[1]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[1]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[1]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[1]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[2]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[2]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[2]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[2]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[3]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[3]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[3]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[3]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[4]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[4]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[4]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[4]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[5]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[5]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[5]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[5]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[6]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[6]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[6]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[6]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[7]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[7]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[7]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[7]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[8]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[8]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[8]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[8]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[9]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[9]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[9]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[9]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[10]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[10]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[10]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[10]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[11]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[11]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[11]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[11]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[12]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[12]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[12]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[12]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[13]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[13]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[13]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[13]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[14]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[14]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[14]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[14]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[15]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[15]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[15]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[15]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[16]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[16]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[16]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[16]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[17]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[17]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[17]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[17]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[18]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[18]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[18]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[18]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[19]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[19]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[19]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[19]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[20]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[20]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[20]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[20]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[21]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[21]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[21]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[21]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[22]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[22]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[22]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[22]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[23]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[23]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[23]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[23]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[24]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[24]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[24]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[24]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[25]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[25]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[25]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[25]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[26]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[26]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[26]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[26]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[27]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[27]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[27]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[27]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[28]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[28]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[28]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[28]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[29]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[29]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[29]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[29]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[30]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[30]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[30]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[30]}]
set_input_delay -clock clk  -max -rise 0.542837  [get_ports {i_B[31]}]
set_input_delay -clock clk  -max -fall 0.391749  [get_ports {i_B[31]}]
set_input_delay -clock clk  -min -rise 0.184561  [get_ports {i_B[31]}]
set_input_delay -clock clk  -min -fall 0.132729  [get_ports {i_B[31]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[0]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[0]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[0]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[0]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[1]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[1]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[1]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[1]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[2]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[2]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[2]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[2]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[3]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[3]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[3]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[3]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[4]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[4]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[4]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[4]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[5]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[5]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[5]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[5]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[6]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[6]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[6]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[6]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[7]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[7]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[7]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[7]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[8]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[8]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[8]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[8]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[9]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[9]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[9]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[9]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[10]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[10]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[10]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[10]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[11]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[11]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[11]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[11]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[12]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[12]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[12]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[12]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[14]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[14]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[14]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[14]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[15]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[15]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[15]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[15]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[16]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[16]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[16]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[16]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[17]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[17]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[17]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[17]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[19]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[19]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[19]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[19]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[20]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[20]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[20]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[20]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[22]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[22]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[22]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[22]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[23]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[23]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[23]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[23]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[24]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[24]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[24]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[24]}]
set_input_delay -clock clk  -max -rise 0.542812  [get_ports {i_A[25]}]
set_input_delay -clock clk  -max -fall 0.391574  [get_ports {i_A[25]}]
set_input_delay -clock clk  -min -rise 0.184523  [get_ports {i_A[25]}]
set_input_delay -clock clk  -min -fall 0.132645  [get_ports {i_A[25]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[26]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[26]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[26]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[26]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[27]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[27]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[27]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[27]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[28]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[28]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[28]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[28]}]
set_input_delay -clock clk  -max -rise 0.542856  [get_ports {i_A[29]}]
set_input_delay -clock clk  -max -fall 0.39188  [get_ports {i_A[29]}]
set_input_delay -clock clk  -min -rise 0.18449  [get_ports {i_A[29]}]
set_input_delay -clock clk  -min -fall 0.132717  [get_ports {i_A[29]}]
set_output_delay -clock clk  -max -rise 3.41088  [get_ports o_Z_STB]
set_output_delay -clock clk  -max -fall 3.48478  [get_ports o_Z_STB]
set_output_delay -clock clk  -min -rise 0.43009  [get_ports o_Z_STB]
set_output_delay -clock clk  -min -fall 0.347468  [get_ports o_Z_STB]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[0]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[0]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[0]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[0]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[1]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[1]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[1]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[1]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[2]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[2]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[2]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[2]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[3]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[3]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[3]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[3]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[4]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[4]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[4]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[4]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[5]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[5]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[5]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[5]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[6]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[6]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[6]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[6]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[7]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[7]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[7]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[7]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[8]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[9]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[10]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[11]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[12]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[13]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[14]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[15]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[16]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[17]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[18]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[19]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[20]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[21]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[22]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[23]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[24]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[25]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[26]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[27]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[28]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[29]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[30]}]
set_output_delay -clock clk  -max -rise 0.61569  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -max -fall 0.595235  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -min -rise 0.193677  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -min -fall 0.206725  [get_ports {o_Z[31]}]
set_output_delay -clock clk  -max -rise 4.6997  [get_ports o_AB_ACK]
set_output_delay -clock clk  -max -fall 4.72142  [get_ports o_AB_ACK]
set_output_delay -clock clk  -min -rise 0.3809  [get_ports o_AB_ACK]
set_output_delay -clock clk  -min -fall 0.341897  [get_ports o_AB_ACK]