###################################################################

# Created by write_sdc on Tue Jun  9 06:05:31 2020

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
[get_ports i_RST]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RST]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_UART_DATA_TX_READY]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[15]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[14]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[13]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[12]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[11]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[10]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[9]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[8]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_UART_DATA_RX[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_UART_DATA_RX_VALID]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_OUT[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_MPR121_INIT_SET]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_MPR121_BUSY]
set_driving_cell -rise -lib_cell fd3d1_hd -library std150e_wst_105_p125 -pin Q \
-from_pin SN -no_design_rule [get_ports i_MPR121_FAIL]
set_driving_cell -fall -lib_cell fd3d1_hd -library std150e_wst_105_p125 -pin Q \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
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
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_driving_cell -lib_cell fds2eqd1_hd -library std150e_wst_105_p125 -pin Q    \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_ADS1292_INIT_SET]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_ADS1292_BUSY]
set_driving_cell -min -lib_cell ft2d1_hd -library std150e_wst_105_p125 -pin Q  \
-from_pin CK -input_transition_rise 1.4 -input_transition_fall 1.9             \
-no_design_rule [get_ports i_CLK]
set_driving_cell -min -lib_cell ivd8_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -no_design_rule [get_ports i_RST]
set_disable_timing [get_ports i_RST]
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
set_fanout_load 3 [get_ports o_MPR121_READ_ENABLE]
set_fanout_load 7 [get_ports {o_ADS1292_CONTROL[2]}]
set_fanout_load 7 [get_ports {o_ADS1292_CONTROL[1]}]
set_fanout_load 4 [get_ports {o_ADS1292_CONTROL[0]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_ADDR[1]}]
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
set_port_fanout_number 3 [get_ports o_MPR121_READ_ENABLE]
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
set_port_fanout_number 1 [get_ports i_ADS1292_INIT_SET]
set_port_fanout_number 2 [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_port_fanout_number 1 [get_ports i_ADS1292_BUSY]
set_port_fanout_number 140 [get_ports i_CLK]
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
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[7]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[6]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[5]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[4]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[3]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[2]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[1]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_OUT[0]}]
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
set_load -pin_load 0.0019 [get_ports i_MPR121_INIT_SET]
set_load -pin_load 0.0019 [get_ports i_MPR121_BUSY]
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
set_max_fanout 1 [get_ports i_RST]
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
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_OUT[0]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_REG_ADDR[7]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[6]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[5]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[4]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[3]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[2]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[1]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_REG_ADDR[0]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_DATA_IN[7]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_DATA_IN[6]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_DATA_IN[4]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_DATA_IN[3]}]
set_load -min -pin_load 0.00149 [get_ports {o_MPR121_DATA_IN[2]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_DATA_IN[1]}]
set_load -min -pin_load 0.00163 [get_ports {o_MPR121_DATA_IN[0]}]
set_load -min -pin_load 0.00864 [get_ports o_MPR121_WRITE_ENABLE]
set_load -min -pin_load 0.00601 [get_ports o_MPR121_READ_ENABLE]
set_load -min -pin_load 0.00195 [get_ports i_MPR121_INIT_SET]
set_load -min -pin_load 0.00195 [get_ports i_MPR121_BUSY]
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
set_load -min -pin_load 0.01741 [get_ports {o_ADS1292_CONTROL[2]}]
set_load -min -pin_load 0.01889 [get_ports {o_ADS1292_CONTROL[1]}]
set_load -min -pin_load 0.00951 [get_ports {o_ADS1292_CONTROL[0]}]
set_load -min -pin_load 0.00156 [get_ports {o_ADS1292_REG_ADDR[7]}]
set_load -min -pin_load 0.00156 [get_ports {o_ADS1292_REG_ADDR[6]}]
set_load -min -pin_load 0.00156 [get_ports {o_ADS1292_REG_ADDR[5]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[4]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[3]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[2]}]
set_load -min -pin_load 0.0021 [get_ports {o_ADS1292_REG_ADDR[1]}]
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
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
set_input_delay 0  [get_ports i_RST]
set_input_delay -clock clk  -max -rise 0.542868  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -max -fall 0.36573  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -min -rise 0.185353  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -min -fall 0.12324  [get_ports i_ADS1292_BUSY]
set_input_delay -clock clk  -max -rise 0.542731  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -max -fall 0.373465  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -min -rise 0.185007  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -min -fall 0.126039  [get_ports i_ADS1292_FILTERED_DATA_VALID]
set_input_delay -clock clk  -max -rise 0.544145  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -max -fall 0.400745  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -min -rise 0.184687  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -min -fall 0.135656  [get_ports i_ADS1292_INIT_SET]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[0]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[1]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[2]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[3]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[4]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[5]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[6]}]
set_input_delay -clock clk  -max -rise 0.547097  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -max -fall 0.443077  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.183238  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.147197  [get_ports {i_ADS1292_REG_DATA_OUT[7]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[0]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[1]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[2]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[3]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[4]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[5]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[6]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[7]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[8]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[9]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[10]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[11]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[12]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[13]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[14]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[15]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[16]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[17]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[18]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[19]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[20]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[21]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[22]}]
set_input_delay -clock clk  -max -rise 0.544218  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -max -fall 0.401248  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -min -rise 0.184692  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -min -fall 0.135818  [get_ports {i_ADS1292_FILTERED_DATA_OUT[23]}]
set_input_delay -clock clk  -max -rise 0.525105  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -max -fall 0.437532  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -min -rise 0.176148  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -min -fall 0.143447  [get_ports i_MPR121_FAIL]
set_input_delay -clock clk  -max -rise 0.54306  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -max -fall 0.359118  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -min -rise 0.185613  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -min -fall 0.12069  [get_ports i_MPR121_BUSY]
set_input_delay -clock clk  -max -rise 0.544025  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -max -fall 0.399916  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -min -rise 0.184642  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -min -fall 0.135362  [get_ports i_MPR121_INIT_SET]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[0]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[1]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[2]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[3]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[4]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[5]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[6]}]
set_input_delay -clock clk  -max -rise 0.544018  [get_ports {i_MPR121_DATA_OUT[7]}]
set_input_delay -clock clk  -max -fall 0.399872  [get_ports {i_MPR121_DATA_OUT[7]}]
set_input_delay -clock clk  -min -rise 0.184714  [get_ports {i_MPR121_DATA_OUT[7]}]
set_input_delay -clock clk  -min -fall 0.135402  [get_ports {i_MPR121_DATA_OUT[7]}]
set_output_delay -clock clk  -max -rise 0.985926  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -max -fall 1.0625  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -min -rise 0.289736  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -min -fall 0.226202  [get_ports o_ADS1292_FILTERED_DATA_ACK]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -min -fall 0.0999547  [get_ports {o_ADS1292_DATA_IN[0]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -min -fall 0.0999547  [get_ports {o_ADS1292_DATA_IN[1]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -min -fall 0.0999547  [get_ports {o_ADS1292_DATA_IN[2]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -min -fall 0.0999547  [get_ports {o_ADS1292_DATA_IN[3]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -min -fall 0.0999547  [get_ports {o_ADS1292_DATA_IN[4]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -min -fall 0.0999587  [get_ports {o_ADS1292_DATA_IN[5]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -min -fall 0.0999587  [get_ports {o_ADS1292_DATA_IN[6]}]
set_output_delay -clock clk  -max -rise 0.253369  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -max -fall 0.292133  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -min -rise 0.0689128  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -min -fall 0.0999117  [get_ports {o_ADS1292_DATA_IN[7]}]
set_output_delay -clock clk  -max -rise 0.44357  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -max -fall 0.281899  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -min -rise 0.127076  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -min -fall 0.106341  [get_ports {o_ADS1292_REG_ADDR[0]}]
set_output_delay -clock clk  -max -rise 0.434484  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -max -fall 0.255783  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -min -rise 0.123996  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -min -fall 0.104173  [get_ports {o_ADS1292_REG_ADDR[1]}]
set_output_delay -clock clk  -max -rise 0.434484  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -max -fall 0.255783  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -min -rise 0.123996  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -min -fall 0.104173  [get_ports {o_ADS1292_REG_ADDR[2]}]
set_output_delay -clock clk  -max -rise 0.434484  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -max -fall 0.255783  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -min -rise 0.123996  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -min -fall 0.104173  [get_ports {o_ADS1292_REG_ADDR[3]}]
set_output_delay -clock clk  -max -rise 0.445072  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -max -fall 0.279254  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -min -rise 0.127076  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -min -fall 0.106341  [get_ports {o_ADS1292_REG_ADDR[4]}]
set_output_delay -clock clk  -max -rise 0.282189  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -max -fall 0.339402  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -min -rise 0.0786927  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -min -fall 0.116437  [get_ports {o_ADS1292_REG_ADDR[5]}]
set_output_delay -clock clk  -max -rise 0.282189  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -max -fall 0.339402  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -min -rise 0.0786927  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -min -fall 0.11638  [get_ports {o_ADS1292_REG_ADDR[6]}]
set_output_delay -clock clk  -max -rise 0.282189  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -max -fall 0.339402  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -min -rise 0.0786927  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -min -fall 0.11638  [get_ports {o_ADS1292_REG_ADDR[7]}]
set_output_delay -clock clk  -max -rise 0.547611  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -max -fall 0.724081  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -min -rise 0.0998089  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -min -fall 0.103237  [get_ports {o_ADS1292_CONTROL[0]}]
set_output_delay -clock clk  -max -rise 1.06919  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -max -fall 0.770926  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -min -rise 0.0503705  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -min -fall 0.0810249  [get_ports {o_ADS1292_CONTROL[1]}]
set_output_delay -clock clk  -max -rise 1.06427  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -max -fall 0.757848  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -min -rise 0.0569313  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -min -fall 0.0794041  [get_ports {o_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -max -rise 0.93641  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -max -fall 0.970671  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -min -rise 0.183713  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -min -fall 0.18094  [get_ports o_MPR121_READ_ENABLE]
set_output_delay -clock clk  -max -rise 1.23132  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -max -fall 1.14447  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -min -rise 0.130408  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -min -fall 0.108451  [get_ports o_MPR121_WRITE_ENABLE]
set_output_delay -clock clk  -max -rise 0.451326  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -max -fall 0.486988  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -min -rise 0.0702757  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -min -fall 0.107599  [get_ports {o_MPR121_DATA_IN[0]}]
set_output_delay -clock clk  -max -rise 0.451326  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -max -fall 0.486988  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -min -rise 0.0702757  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -min -fall 0.107599  [get_ports {o_MPR121_DATA_IN[1]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_DATA_IN[2]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_DATA_IN[3]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_DATA_IN[4]}]
set_output_delay -clock clk  -max -rise 0.451326  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -max -fall 0.486988  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -min -rise 0.0702757  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -min -fall 0.107599  [get_ports {o_MPR121_DATA_IN[6]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_DATA_IN[7]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[0]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[1]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[2]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[3]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[4]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[5]}]
set_output_delay -clock clk  -max -rise 0.43439  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -max -fall 0.388013  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -min -rise 0.0672879  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -min -fall 0.076933  [get_ports {o_MPR121_REG_ADDR[6]}]
set_output_delay -clock clk  -max -rise 0.451326  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -max -fall 0.486988  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -min -rise 0.0702757  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -min -fall 0.107599  [get_ports {o_MPR121_REG_ADDR[7]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
