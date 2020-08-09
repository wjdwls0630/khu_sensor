###################################################################

# Created by write_sdc on Wed Jun 17 19:04:11 2020

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
[get_ports {o_UART_DATA_TX[55]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[55]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[54]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[54]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[53]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[53]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[52]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[52]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[51]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[51]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[50]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[50]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[49]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[49]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[48]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[48]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[47]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[47]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[46]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[46]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[45]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[45]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[44]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[44]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[43]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[43]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[42]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[42]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[41]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[41]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[40]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[40]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[39]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[39]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[38]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[38]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[37]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[37]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[36]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[36]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[35]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[35]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[34]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[34]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[33]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[33]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[32]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[32]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[31]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[31]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[30]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[30]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[29]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[29]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[28]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[28]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[27]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[27]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[26]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[26]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[25]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[25]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[24]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[24]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_UART_DATA_TX[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_UART_DATA_TX[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_UART_DATA_TX_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_UART_DATA_TX_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_UART_DATA_TX_READY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_UART_DATA_TX_READY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_UART_DATA_RX[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_UART_DATA_RX[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_UART_DATA_RX_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_UART_DATA_RX_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_OUT[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_REG_ADDR[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_REG_ADDR[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_IN[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_IN[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_MPR121_WRITE_ENABLE]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_MPR121_WRITE_ENABLE]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_MPR121_READ_ENABLE]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_MPR121_READ_ENABLE]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_MPR121_INIT_SET]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_MPR121_INIT_SET]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_MPR121_BUSY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_MPR121_BUSY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_MPR121_FAIL]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_MPR121_FAIL]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_CONTROL[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_CONTROL[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_CONTROL[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_CONTROL[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_CONTROL[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_CONTROL[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_ADDR[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_ADDR[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_IN[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_IN[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_ADS1292_INIT_SET]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_ADS1292_INIT_SET]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_ADS1292_FILTERED_DATA_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_ADS1292_FILTERED_DATA_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_FILTERED_DATA_ACK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_FILTERED_DATA_ACK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_ADS1292_BUSY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_ADS1292_BUSY]
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
-no_design_rule [get_ports i_UART_DATA_TX_READY]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports i_UART_DATA_TX_READY]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[15]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[15]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[14]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[14]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[13]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[13]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[12]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[12]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[11]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[11]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[10]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[10]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[9]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[9]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[8]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[8]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_UART_DATA_RX[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports {i_UART_DATA_RX[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_UART_DATA_RX_VALID]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.27275 -input_transition_fall 0.667263  \
-no_design_rule [get_ports i_UART_DATA_RX_VALID]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports {i_MPR121_DATA_OUT[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_MPR121_INIT_SET]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.02743 -input_transition_fall 0.555585  \
-no_design_rule [get_ports i_MPR121_INIT_SET]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_MPR121_BUSY]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.44171 -input_transition_fall 0.750039  \
-no_design_rule [get_ports i_MPR121_BUSY]
set_driving_cell -rise -lib_cell fd3d1_hd -library std150e_wst_105_p125 -pin Q \
-from_pin SN -no_design_rule [get_ports i_MPR121_FAIL]
set_driving_cell -fall -lib_cell fd3d1_hd -library std150e_wst_105_p125 -pin Q \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports i_MPR121_FAIL]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_ADS1292_INIT_SET]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports i_ADS1292_INIT_SET]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_ADS1292_BUSY]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports i_ADS1292_BUSY]
set_driving_cell -min -rise -lib_cell fj4d1_hd -library std150e_wst_105_p125   \
-pin Q -from_pin SN -input_transition_rise 1.01908 -input_transition_fall      \
0.546483 -no_design_rule [get_ports i_CLK]
set_driving_cell -min -fall -lib_cell fj4d1_hd -library std150e_wst_105_p125   \
-pin Q -from_pin RN -no_design_rule [get_ports i_CLK]
set_driving_cell -min -lib_cell nid1_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 1.01908 -input_transition_fall 0.546483     \
-no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells async_rst_synchronizer]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[55]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[54]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[53]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[52]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[51]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[50]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[49]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[48]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[47]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[46]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[45]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[44]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[43]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[42]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[41]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[40]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[39]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[38]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[37]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[36]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[35]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[34]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[33]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[32]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[31]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[30]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[29]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[28]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[27]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[26]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[25]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[24]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[23]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[22]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[21]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[20]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[19]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[18]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[17]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[16]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[15]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[14]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[13]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[12]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[11]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[10]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[9]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[8]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[7]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[6]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[5]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[4]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[3]}]
set_fanout_load 0 [get_ports {o_UART_DATA_TX[2]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[1]}]
set_fanout_load 1 [get_ports {o_UART_DATA_TX[0]}]
set_fanout_load 4 [get_ports o_UART_DATA_TX_VALID]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[7]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[6]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[5]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[4]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[3]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[2]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[1]}]
set_fanout_load 1 [get_ports {o_MPR121_REG_ADDR[0]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[7]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[6]}]
set_fanout_load 0 [get_ports {o_MPR121_DATA_IN[5]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[4]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[3]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[2]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[1]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_IN[0]}]
set_fanout_load 4 [get_ports o_MPR121_WRITE_ENABLE]
set_fanout_load 4 [get_ports o_MPR121_READ_ENABLE]
set_fanout_load 7 [get_ports {o_ADS1292_CONTROL[2]}]
set_fanout_load 7 [get_ports {o_ADS1292_CONTROL[1]}]
set_fanout_load 4 [get_ports {o_ADS1292_CONTROL[0]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_fanout_load 2 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_fanout_load 2 [get_ports {o_ADS1292_REG_ADDR[1]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[0]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[7]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[6]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[5]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[4]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[3]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[2]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[1]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_IN[0]}]
set_fanout_load 1 [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[52]}]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[23]}]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[22]}]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[21]}]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[20]}]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[6]}]
set_port_fanout_number 0 [get_ports {o_UART_DATA_TX[2]}]
set_port_fanout_number 4 [get_ports o_UART_DATA_TX_VALID]
set_port_fanout_number 1 [get_ports i_UART_DATA_TX_READY]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[15]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[14]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[13]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[12]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[11]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[10]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[9]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[8]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[7]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[6]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[5]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[4]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[3]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[2]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[1]}]
set_port_fanout_number 1 [get_ports {i_UART_DATA_RX[0]}]
set_port_fanout_number 1 [get_ports i_UART_DATA_RX_VALID]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[7]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[6]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[5]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[4]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[3]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[2]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[1]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_OUT[0]}]
set_port_fanout_number 0 [get_ports {o_MPR121_DATA_IN[5]}]
set_port_fanout_number 4 [get_ports o_MPR121_WRITE_ENABLE]
set_port_fanout_number 4 [get_ports o_MPR121_READ_ENABLE]
set_port_fanout_number 1 [get_ports i_MPR121_INIT_SET]
set_port_fanout_number 1 [get_ports i_MPR121_BUSY]
set_port_fanout_number 0 [get_ports o_MPR121_ERROR]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_port_fanout_number 7 [get_ports {o_ADS1292_CONTROL[2]}]
set_port_fanout_number 7 [get_ports {o_ADS1292_CONTROL[1]}]
set_port_fanout_number 4 [get_ports {o_ADS1292_CONTROL[0]}]
set_port_fanout_number 2 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_port_fanout_number 2 [get_ports {o_ADS1292_REG_ADDR[1]}]
set_port_fanout_number 1 [get_ports i_ADS1292_INIT_SET]
set_port_fanout_number 2 [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_port_fanout_number 1 [get_ports i_ADS1292_BUSY]
set_port_fanout_number 148 [get_ports i_CLK]
set_port_fanout_number 8 [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[55]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[54]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[53]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[52]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[51]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[50]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[49]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[48]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[47]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[46]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[45]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[44]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[43]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[42]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[41]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[40]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[39]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[38]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[37]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[36]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[35]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[34]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[33]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[32]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[31]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[30]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[29]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[28]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[27]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[26]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[25]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[24]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[23]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[22]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[21]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[20]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[19]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[18]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[17]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[16]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[15]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[14]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[13]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[12]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[11]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[10]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[9]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[8]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[7]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[6]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[5]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[4]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[3]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[2]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[1]}]
set_load -pin_load 0.01035 [get_ports {o_UART_DATA_TX[0]}]
set_load -pin_load 0.01035 [get_ports o_UART_DATA_TX_VALID]
set_load -pin_load 0.0019 [get_ports i_UART_DATA_TX_READY]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[15]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[14]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[13]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[12]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[11]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[10]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[9]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[8]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[7]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[6]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[5]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[4]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[3]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[2]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[1]}]
set_load -pin_load 0.0019 [get_ports {i_UART_DATA_RX[0]}]
set_load -pin_load 0.0019 [get_ports i_UART_DATA_RX_VALID]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[7]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[6]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[5]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[4]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[3]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[2]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[1]}]
set_load -pin_load 0.00153 [get_ports {i_MPR121_DATA_OUT[0]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[7]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[6]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[5]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[4]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[3]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[2]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[1]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_REG_ADDR[0]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[7]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[6]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[5]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[4]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[3]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[2]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[1]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_IN[0]}]
set_load -pin_load 0.01035 [get_ports o_MPR121_WRITE_ENABLE]
set_load -pin_load 0.01035 [get_ports o_MPR121_READ_ENABLE]
set_load -pin_load 0.00153 [get_ports i_MPR121_INIT_SET]
set_load -pin_load 0.00246 [get_ports i_MPR121_BUSY]
set_load -pin_load 0.01035 [get_ports o_MPR121_ERROR]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_CONTROL[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_CONTROL[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_CONTROL[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_ADDR[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_IN[0]}]
set_load -pin_load 0.00153 [get_ports i_ADS1292_INIT_SET]
set_load -pin_load 0.00395 [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_load -pin_load 0.01035 [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_load -pin_load 0.00204 [get_ports i_ADS1292_BUSY]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.0176 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports i_UART_DATA_TX_READY]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[15]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[14]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[13]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[12]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[11]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[10]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[9]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[8]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[7]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[6]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[5]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[4]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[3]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[2]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[1]}]
set_max_capacitance 0.082 [get_ports {i_UART_DATA_RX[0]}]
set_max_capacitance 0.082 [get_ports i_UART_DATA_RX_VALID]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[7]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[6]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[5]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[4]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[3]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[2]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[1]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_OUT[0]}]
set_max_capacitance 0.082 [get_ports i_MPR121_INIT_SET]
set_max_capacitance 0.082 [get_ports i_MPR121_BUSY]
set_max_capacitance 0.082 [get_ports i_MPR121_FAIL]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_max_capacitance 0.082 [get_ports i_ADS1292_INIT_SET]
set_max_capacitance 0.082 [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_max_capacitance 0.082 [get_ports i_ADS1292_BUSY]
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[55]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[54]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[53]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[51]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[50]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[49]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[48]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[47]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[46]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[45]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[44]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[43]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[42]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[41]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[40]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[39]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[38]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[37]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[36]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[35]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[34]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[33]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[32]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[31]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[30]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[29]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[28]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[27]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[26]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[25]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[24]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[19]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[18]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[17]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[16]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[15]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[14]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[13]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[12]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[11]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[10]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[9]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[8]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[7]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[5]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[4]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[3]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[1]}]
set_max_transition 1.5 [get_ports {o_UART_DATA_TX[0]}]
set_max_transition 1.5 [get_ports o_UART_DATA_TX_VALID]
set_max_transition 1.5 [get_ports i_UART_DATA_TX_READY]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[15]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[14]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[13]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[12]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[11]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[10]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[9]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[8]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[7]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[6]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[5]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[4]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[3]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[2]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[1]}]
set_max_transition 1.5 [get_ports {i_UART_DATA_RX[0]}]
set_max_transition 1.5 [get_ports i_UART_DATA_RX_VALID]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[7]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[6]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[5]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[4]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[3]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[2]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[1]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[0]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[7]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[6]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[4]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[3]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[2]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[1]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_IN[0]}]
set_max_transition 1.5 [get_ports o_MPR121_WRITE_ENABLE]
set_max_transition 1.5 [get_ports o_MPR121_READ_ENABLE]
set_max_transition 1.5 [get_ports i_MPR121_INIT_SET]
set_max_transition 1.5 [get_ports i_MPR121_BUSY]
set_max_transition 1.5 [get_ports i_MPR121_FAIL]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports {o_ADS1292_CONTROL[2]}]
set_max_transition 1.5 [get_ports {o_ADS1292_CONTROL[1]}]
set_max_transition 1.5 [get_ports {o_ADS1292_CONTROL[0]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[1]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_ADDR[0]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[7]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[6]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[5]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[4]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[3]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[2]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[1]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_IN[0]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports i_ADS1292_INIT_SET]
set_max_transition 1.5 [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_max_transition 1.5 [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_max_transition 1.5 [get_ports i_ADS1292_BUSY]
set_max_transition 1.5 [get_ports i_RSTN]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[55]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[54]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[53]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[51]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[50]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[49]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[48]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[47]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[46]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[45]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[44]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[43]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[42]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[41]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[40]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[39]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[38]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[37]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[36]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[35]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[34]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[33]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[32]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[31]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[30]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[29]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[28]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[27]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[26]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[25]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[24]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[19]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[18]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[17]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[16]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[15]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[14]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[13]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[12]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[11]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[10]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[9]}]
set_load -min -pin_load 0.00157 [get_ports {o_UART_DATA_TX[8]}]
set_load -min -pin_load 0.00149 [get_ports {o_UART_DATA_TX[7]}]
set_load -min -pin_load 0.00149 [get_ports {o_UART_DATA_TX[5]}]
set_load -min -pin_load 0.00149 [get_ports {o_UART_DATA_TX[4]}]
set_load -min -pin_load 0.00149 [get_ports {o_UART_DATA_TX[3]}]
set_load -min -pin_load 0.00149 [get_ports {o_UART_DATA_TX[1]}]
set_load -min -pin_load 0.00149 [get_ports {o_UART_DATA_TX[0]}]
set_load -min -pin_load 0.00782 [get_ports o_UART_DATA_TX_VALID]
set_load -min -pin_load 0.00195 [get_ports i_UART_DATA_TX_READY]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[15]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[14]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[13]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[12]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[11]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[10]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[9]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[8]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_UART_DATA_RX[0]}]
set_load -min -pin_load 0.00195 [get_ports i_UART_DATA_RX_VALID]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[7]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[6]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[5]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[4]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[3]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[2]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[1]}]
set_load -min -pin_load 0.00157 [get_ports {i_MPR121_DATA_OUT[0]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_REG_ADDR[7]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_REG_ADDR[6]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_REG_ADDR[5]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_REG_ADDR[4]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_REG_ADDR[3]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_REG_ADDR[2]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_REG_ADDR[1]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[0]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_DATA_IN[7]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_DATA_IN[6]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_DATA_IN[4]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_DATA_IN[3]}]
set_load -min -pin_load 0.00182 [get_ports {o_MPR121_DATA_IN[2]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_DATA_IN[1]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_DATA_IN[0]}]
set_load -min -pin_load 0.00835 [get_ports o_MPR121_WRITE_ENABLE]
set_load -min -pin_load 0.00915 [get_ports o_MPR121_READ_ENABLE]
set_load -min -pin_load 0.00157 [get_ports i_MPR121_INIT_SET]
set_load -min -pin_load 0.00252 [get_ports i_MPR121_BUSY]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_load -min -pin_load 0.01739 [get_ports {o_ADS1292_CONTROL[2]}]
set_load -min -pin_load 0.01739 [get_ports {o_ADS1292_CONTROL[1]}]
set_load -min -pin_load 0.00885 [get_ports {o_ADS1292_CONTROL[0]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_load -min -pin_load 0.00425 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_load -min -pin_load 0.00334 [get_ports {o_ADS1292_REG_ADDR[1]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[0]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[7]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[6]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[5]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[4]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[3]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[2]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[1]}]
set_load -min -pin_load 0.00167 [get_ports {o_ADS1292_DATA_IN[0]}]
set_load -min -pin_load 0.00157 [get_ports i_ADS1292_INIT_SET]
set_load -min -pin_load 0.00404 [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_load -min -pin_load 0.0021 [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_load -min -pin_load 0.0021 [get_ports i_ADS1292_BUSY]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.01798 [get_ports i_RSTN]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_latency 0.66  [get_clocks clk]
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_false_path   -to [get_cells async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_ports i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_input_delay -clock clk  -max 4  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -min -rise 0.170792  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -min -fall 0.102488  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -max 4  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -min -rise 0.168271  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -min -fall 0.110166  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -max 4  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -min -fall 0.117779  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.167355  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.132136  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -max 4  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -min -rise 0.167942  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -min -fall 0.120113  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -max 4  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -min -rise 0.160441  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -min -fall 0.129664  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -max 4  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -min -rise 0.170969  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -min -fall 0.0992044  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -max 4  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -min -rise 0.170119  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -min -fall 0.117751  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.170193  [get_ports {i_MPR121_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.117788  [get_ports {i_MPR121_DATA_OUT[7]}]
set_input_delay -clock clk  -max 4  [get_ports i_UART_DATA_RX_VALID]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[8]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[9]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[10]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[11]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[12]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[13]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[14]}]
set_input_delay -clock clk  -max 4  [get_ports {i_UART_DATA_RX[15]}]
set_input_delay -clock clk  -max 4  [get_ports i_UART_DATA_TX_READY]
set_output_delay -clock clk  -max 4  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -min -rise 0.289787  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -min -fall 0.226667  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -min -fall 0.0976946  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -min -fall 0.0976946  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -min -fall 0.0976946  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -min -fall 0.0976946  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -min -fall 0.0976946  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -min -fall 0.097661  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -min -fall 0.097661  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -min -fall 0.0976644  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -min -rise 0.126865  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -min -fall 0.104099  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -min -rise 0.0713637  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -min -fall 0.104621  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -min -rise 0.123776  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -min -fall 0.102108  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -min -rise 0.123776  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -min -fall 0.102108  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -min -rise 0.071525  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -min -fall 0.105442  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -min -fall 0.0977085  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -min -fall 0.0977082  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -min -rise 0.0686732  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -min -fall 0.0976816  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -min -rise 0.118217  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -min -fall 0.0993448  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -min -rise 0.0543051  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -min -fall 0.0798372  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -min -rise 0.0535613  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -min -fall 0.0798372  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -max 4  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -min -rise 0.114543  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -min -fall 0.106948  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -max 4  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -min -rise 0.0448196  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -min -fall 0.0982039  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -min -rise 0.0702066  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -min -fall 0.107779  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -min -rise 0.0702066  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -min -fall 0.107779  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -min -rise 0.0702066  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -min -fall 0.107779  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -min -rise 0.0672166  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -min -fall 0.077291  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -min -rise 0.0681337  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -min -fall 0.0669112  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -min -rise 0.0702066  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -min -fall 0.107779  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -max 4  [get_ports o_UART_DATA_TX_VALID]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[8]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[9]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[10]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[11]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[12]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[13]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[14]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[15]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[16]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[17]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[18]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[19]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[24]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[25]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[26]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[27]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[28]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[29]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[30]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[31]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[32]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[33]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[34]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[35]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[36]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[37]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[38]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[39]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[40]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[41]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[42]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[43]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[44]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[45]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[46]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[47]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[48]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[49]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[50]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[51]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[53]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[54]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[55]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[52]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[23]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[22]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[21]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[20]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_UART_DATA_TX[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_MPR121_DATA_IN[5]}]
set_output_delay -clock clk  -max 4  [get_ports o_MPR121_ERROR]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rst_synchronizer/i_CLK]
