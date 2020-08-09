###################################################################

# Created by write_sdc on Wed Jun 17 19:12:21 2020

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
[get_ports {i_UART_DATA_TX[55]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[55]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[54]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[54]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[53]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[53]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[52]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[52]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[51]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[51]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[50]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[50]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[49]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[49]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[48]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[48]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[47]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[47]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[46]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[46]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[45]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[45]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[44]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[44]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[43]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[43]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[42]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[42]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[41]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[41]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[40]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[40]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[39]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[39]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[38]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[38]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[37]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[37]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[36]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[36]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[35]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[35]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[34]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[34]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[33]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[33]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[32]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[32]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[31]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[31]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[30]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[30]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[29]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[29]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[28]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[28]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[27]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[27]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[26]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[26]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[25]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[25]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[24]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[24]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_TX[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_TX[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_UART_DATA_TX_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_UART_DATA_TX_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_UART_DATA_TX_READY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_UART_DATA_TX_READY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_RX[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_RX[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_UART_DATA_RX_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_UART_DATA_RX_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_CORE_BUSY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CORE_BUSY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_UART_RXD]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_UART_RXD]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_UART_TXD]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_UART_TXD]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[55]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[55]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[54]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[54]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[53]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[53]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[51]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[51]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[50]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[50]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[49]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[49]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[48]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[48]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[47]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[47]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[46]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[46]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[45]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[45]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[44]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[44]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[43]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[43]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[42]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[42]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[41]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_UART_DATA_TX[41]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[40]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[40]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[39]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[39]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[38]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[38]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[37]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[37]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[36]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[36]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[35]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[35]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[34]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[34]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[33]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[33]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[32]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[32]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[31]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[31]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[30]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[30]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[29]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[29]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[28]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[28]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[27]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[27]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[26]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[26]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[25]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[25]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[24]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[24]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[19]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[19]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[18]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[18]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[17]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[17]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[16]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[16]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[15]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[15]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[14]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[14]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[13]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[13]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[12]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[12]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[11]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[11]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[10]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[10]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[9]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[9]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[8]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_UART_DATA_TX[8]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.32058 -input_transition_fall 0.694717  \
-no_design_rule [get_ports {i_UART_DATA_TX[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_TX[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.2227 -input_transition_fall 0.65602    \
-no_design_rule [get_ports {i_UART_DATA_TX[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_UART_DATA_TX_VALID]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports i_UART_DATA_TX_VALID]
set_driving_cell -min -rise -lib_cell fj4d1_hd -library std150e_wst_105_p125   \
-pin Q -from_pin SN -input_transition_rise 1.01908 -input_transition_fall      \
0.546483 -no_design_rule [get_ports i_CLK]
set_driving_cell -min -fall -lib_cell fj4d1_hd -library std150e_wst_105_p125   \
-pin Q -from_pin RN -no_design_rule [get_ports i_CLK]
set_driving_cell -min -lib_cell nid1_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 1.01908 -input_transition_fall 0.546483     \
-no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_pins uart_rx/i_RSTN]
set_disable_timing [get_pins uart_tx/i_RSTN]
set_disable_timing [get_cells async_rstn_synchronizer]
set_disable_timing [get_cells async_rst_synchronizer]
set_disable_timing [get_cells uart_rx/async_rst_synchronizer]
set_disable_timing [get_cells uart_tx/async_rst_synchronizer]
set_fanout_load 2 [get_ports o_UART_DATA_TX_READY]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[15]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[14]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[13]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[12]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[11]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[10]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[9]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[8]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[7]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[6]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[5]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[4]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[3]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[2]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[1]}]
set_fanout_load 1 [get_ports {o_UART_DATA_RX[0]}]
set_fanout_load 2 [get_ports o_UART_DATA_RX_VALID]
set_fanout_load 0 [get_ports o_UART_TXD]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[55]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[54]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[53]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[52]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[51]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[50]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[49]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[48]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[47]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[46]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[45]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[44]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[43]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[42]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[41]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[40]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[39]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[38]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[37]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[36]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[35]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[34]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[33]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[32]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[31]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[30]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[29]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[28]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[27]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[26]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[25]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[24]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[23]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[22]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[21]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[20]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[19]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[18]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[17]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[16]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[15]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[14]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[13]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[12]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[11]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[10]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[9]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[8]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[7]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[6]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[5]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[4]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[3]}]
set_port_fanout_number 0 [get_ports {i_UART_DATA_TX[2]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[1]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_TX[0]}]
set_port_fanout_number 1 [get_ports i_UART_DATA_TX_VALID]
set_port_fanout_number 2 [get_ports o_UART_DATA_TX_READY]
set_port_fanout_number 2 [get_ports o_UART_DATA_RX_VALID]
set_port_fanout_number 0 [get_ports i_CORE_BUSY]
set_port_fanout_number 278 [get_ports i_CLK]
set_port_fanout_number 6 [get_ports i_RSTN]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[55]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[54]}]
set_load -pin_load 0.00204 [get_ports {i_UART_DATA_TX[53]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[51]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[50]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[49]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[48]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[47]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[46]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[45]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[44]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[43]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[42]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[41]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[40]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[39]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[38]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[37]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[36]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[35]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[34]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[33]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[32]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[31]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[30]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[29]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[28]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[27]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[26]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[25]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[24]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[19]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[18]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[17]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[16]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[15]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[14]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[13]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[12]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[11]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[10]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[9]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[8]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[7]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[5]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[4]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[3]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[1]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_TX[0]}]
set_load -pin_load 0.0019 [get_ports i_UART_DATA_TX_VALID]
set_load -pin_load 0.01035 [get_ports o_UART_DATA_TX_READY]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[15]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[14]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[13]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[12]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[11]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[10]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[9]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[8]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[7]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[6]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[5]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[4]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[3]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[2]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[1]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_RX[0]}]
set_load -pin_load 0.01035 [get_ports o_UART_DATA_RX_VALID]
set_load -pin_load 0.01035 [get_ports o_UART_TXD]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01424 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[55]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[54]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[53]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[51]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[50]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[49]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[48]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[47]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[46]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[45]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[44]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[43]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[42]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[41]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[40]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[39]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[38]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[37]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[36]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[35]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[34]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[33]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[32]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[31]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[30]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[29]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[28]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[27]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[26]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[25]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[24]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[19]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[18]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[17]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[16]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[15]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[14]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[13]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[12]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[11]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[10]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[9]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[8]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[7]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[5]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[4]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[3]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[1]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_TX[0]}]
set_max_capacitance 0.082 [get_ports i_UART_DATA_TX_VALID]
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[55]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[54]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[53]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[51]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[50]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[49]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[48]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[47]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[46]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[45]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[44]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[43]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[42]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[41]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[40]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[39]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[38]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[37]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[36]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[35]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[34]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[33]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[32]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[31]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[30]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[29]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[28]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[27]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[26]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[25]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[24]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[19]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[18]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[17]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[16]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[15]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[14]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[13]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[12]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[11]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[10]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[9]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[8]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[7]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[5]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[4]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[3]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[1]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_TX[0]}]
set_max_transition 1.5 [get_ports i_UART_DATA_TX_VALID]
set_max_transition 1.5 [get_ports o_UART_DATA_TX_READY]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[15]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[14]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[13]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[12]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[11]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[10]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[9]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[8]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[7]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[6]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[5]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[4]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[3]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[2]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[1]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_RX[0]}]
set_max_transition 1.5 [get_ports o_UART_DATA_RX_VALID]
set_max_transition 1.5 [get_ports i_RSTN]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[55]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[54]}]
set_load -min -pin_load 0.0021 [get_ports {i_UART_DATA_TX[53]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[51]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[50]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[49]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[48]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[47]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[46]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[45]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[44]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[43]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[42]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[41]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[40]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[39]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[38]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[37]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[36]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[35]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[34]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[33]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[32]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[31]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[30]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[29]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[28]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[27]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[26]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[25]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[24]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[19]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[18]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[17]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[16]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[15]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[14]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[13]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[12]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[11]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[10]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[9]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[8]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_TX[0]}]
set_load -min -pin_load 0.00195 [get_ports i_UART_DATA_TX_VALID]
set_load -min -pin_load 0.00455 [get_ports o_UART_DATA_TX_READY]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[15]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[14]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[13]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[12]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[11]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[10]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[9]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[8]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[7]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[6]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[5]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[4]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[3]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[2]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[1]}]
set_load -min -pin_load 0.00166 [get_ports {o_UART_DATA_RX[0]}]
set_load -min -pin_load 0.00424 [get_ports o_UART_DATA_RX_VALID]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.01448 [get_ports i_RSTN]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[52]}]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[23]}]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[22]}]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[21]}]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[20]}]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[6]}]
set_case_analysis 0 [get_ports {i_UART_DATA_TX[2]}]
set_case_analysis 0 [get_ports i_CORE_BUSY]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins uart_rx/i_RSTN]
set_ideal_network [get_pins uart_tx/i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_latency 0.66  [get_clocks clk]
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_false_path   -through [list [get_ports i_RSTN] [get_pins uart_rx/i_RSTN] [get_pins         \
uart_tx/i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells async_rst_synchronizer/o_RST_reg]
set_false_path   -to [list [get_cells uart_rx/async_rst_synchronizer/o_RST_reg] [get_cells     \
uart_tx/async_rst_synchronizer/o_RST_reg]]
set_false_path   -to [get_cells uart_rx/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins uart_rx/i_RSTN]]
set_false_path   -to [get_cells uart_tx/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins uart_tx/i_RSTN]]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[52]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[23]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[22]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[21]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[20]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[2]}]
set_input_delay -clock clk  -max 4  [get_ports i_CORE_BUSY]
set_input_delay -min 0  [get_ports i_UART_RXD]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_UART_RXD]
set_input_delay -clock clk  -max 4  [get_ports i_UART_DATA_TX_VALID]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[8]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[9]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[10]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[11]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[12]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[13]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[14]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[15]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[16]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[17]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[18]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[19]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[24]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[25]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[26]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[27]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[28]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[29]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[30]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[31]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[32]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[33]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[34]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[35]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[36]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[37]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[38]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[39]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[40]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[41]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[42]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[43]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[44]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[45]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[46]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[47]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[48]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[49]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[50]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[51]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[53]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[54]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_TX[55]}]
set_output_delay -clock clk  -max 4  [get_ports o_UART_TXD]
set_output_delay -clock clk  -max 4  [get_ports o_UART_DATA_RX_VALID]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[8]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[9]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[10]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[11]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[12]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[13]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[14]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_RX[15]}]
set_output_delay -clock clk  -max 4  [get_ports o_UART_DATA_TX_READY]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rst_synchronizer/i_CLK]
