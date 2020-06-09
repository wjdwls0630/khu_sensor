###################################################################

# Created by write_sdc on Tue Jun  9 05:43:27 2020

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
[get_ports {o_ADS1292_DATA_OUT[23]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[23]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[22]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[22]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[21]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[21]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[20]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[20]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[19]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[19]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[18]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[18]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[17]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[17]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[16]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[16]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[15]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[15]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[14]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[14]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[13]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[13]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[12]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[12]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[11]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[11]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[10]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[10]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[9]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[9]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[8]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[8]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_DATA_OUT[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_CONTROL[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_CONTROL[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_CONTROL[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_CONTROL[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_CONTROL[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_CONTROL[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_REG_ADDR[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_REG_ADDR[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_ADS1292_DATA_IN[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_ADS1292_DATA_IN[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_INIT_SET]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_INIT_SET]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_DATA_VALID]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_DATA_VALID]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_BUSY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_BUSY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_SPI_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_SPI_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_SPI_MISO]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_SPI_MISO]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_SPI_MOSI]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_SPI_MOSI]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_ADS1292_DRDY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_ADS1292_DRDY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_RESET]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_RESET]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_ADS1292_START]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_ADS1292_START]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_SPI_CSN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_SPI_CSN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_CONTROL[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_CONTROL[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_CONTROL[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_REG_ADDR[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_ADS1292_DATA_IN[0]}]
set_disable_timing [get_ports i_RSTN]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[23]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[22]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[21]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[20]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[19]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[18]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[17]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[16]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[15]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[14]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[13]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[12]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[11]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[10]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[9]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[8]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[7]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[6]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[5]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[4]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[3]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[2]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[1]}]
set_fanout_load 1 [get_ports {o_ADS1292_DATA_OUT[0]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_fanout_load 1 [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_fanout_load 1 [get_ports o_ADS1292_INIT_SET]
set_fanout_load 1 [get_ports o_ADS1292_DATA_VALID]
set_fanout_load 4 [get_ports o_ADS1292_BUSY]
set_fanout_load 0 [get_ports o_SPI_CLK]
set_fanout_load 0 [get_ports o_SPI_MOSI]
set_fanout_load 0 [get_ports o_ADS1292_RESET]
set_fanout_load 0 [get_ports o_ADS1292_START]
set_fanout_load 0 [get_ports o_SPI_CSN]
set_port_fanout_number 1 [get_ports {i_ADS1292_CONTROL[2]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_CONTROL[1]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_CONTROL[0]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[7]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[6]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[5]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[4]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[3]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[2]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[1]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_REG_ADDR[0]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[7]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[6]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[5]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[4]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[3]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[2]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[1]}]
set_port_fanout_number 1 [get_ports {i_ADS1292_DATA_IN[0]}]
set_port_fanout_number 4 [get_ports o_ADS1292_BUSY]
set_port_fanout_number 4779 [get_ports i_CLK]
set_port_fanout_number 1561 [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[23]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[22]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[21]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[20]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[19]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[18]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[17]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[16]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[15]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[14]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[13]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[12]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[11]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[10]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[9]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[8]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_DATA_OUT[0]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_CONTROL[2]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_CONTROL[1]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_CONTROL[0]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[7]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[6]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[5]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[4]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[3]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[2]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[1]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_REG_ADDR[0]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[7]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[6]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[5]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[4]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[3]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[2]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[1]}]
set_load -pin_load 0.0019 [get_ports {i_ADS1292_DATA_IN[0]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_load -pin_load 0.01035 [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_load -pin_load 0.01035 [get_ports o_ADS1292_INIT_SET]
set_load -pin_load 0.01035 [get_ports o_ADS1292_DATA_VALID]
set_load -pin_load 0.01035 [get_ports o_ADS1292_BUSY]
set_load -pin_load 0.01035 [get_ports o_SPI_CLK]
set_load -pin_load 0.01035 [get_ports o_SPI_MOSI]
set_load -pin_load 0.01035 [get_ports o_ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports o_ADS1292_START]
set_load -pin_load 0.01035 [get_ports o_SPI_CSN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 2.86074 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports {i_ADS1292_CONTROL[2]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_CONTROL[1]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_CONTROL[0]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[7]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[6]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[5]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[4]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[3]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[2]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[1]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_REG_ADDR[0]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[7]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[6]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[5]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[4]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[3]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[2]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[1]}]
set_max_capacitance 0.082 [get_ports {i_ADS1292_DATA_IN[0]}]
set_max_fanout 1 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[23]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[22]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[21]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[20]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[19]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[18]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[17]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[16]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[15]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[14]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[13]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[12]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[11]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[10]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[9]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[8]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {o_ADS1292_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports {i_ADS1292_CONTROL[2]}]
set_max_transition 1.5 [get_ports {i_ADS1292_CONTROL[1]}]
set_max_transition 1.5 [get_ports {i_ADS1292_CONTROL[0]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[7]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[6]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[5]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[4]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[3]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[2]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[1]}]
set_max_transition 1.5 [get_ports {i_ADS1292_REG_ADDR[0]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[7]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[6]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[5]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[4]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[3]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[2]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[1]}]
set_max_transition 1.5 [get_ports {i_ADS1292_DATA_IN[0]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports o_ADS1292_INIT_SET]
set_max_transition 1.5 [get_ports o_ADS1292_DATA_VALID]
set_max_transition 1.5 [get_ports o_ADS1292_BUSY]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[23]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[22]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[21]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[20]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[19]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[18]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[17]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[16]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[15]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[14]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[13]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[12]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[11]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[10]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[9]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[8]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[7]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[6]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[5]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[4]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[3]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[2]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[1]}]
set_load -min -pin_load 0.00202 [get_ports {o_ADS1292_DATA_OUT[0]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_CONTROL[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_CONTROL[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_CONTROL[0]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_REG_ADDR[0]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[5]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_ADS1292_DATA_IN[0]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_load -min -pin_load 0.00166 [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_load -min -pin_load 0.0021 [get_ports o_ADS1292_INIT_SET]
set_load -min -pin_load 0.0021 [get_ports o_ADS1292_DATA_VALID]
set_load -min -pin_load 0.00735 [get_ports o_ADS1292_BUSY]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 2.91933 [get_ports i_RSTN]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
create_clock -name clk_half  -period 20  -waveform {0 10}
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_false_path   -from [get_ports i_RSTN]
set_input_delay 0  [get_ports i_RSTN]
set_input_delay 0  [get_ports i_ADS1292_DRDY]
set_input_delay 0  [get_ports i_SPI_MISO]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk_half  -max -rise 0.544158  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk_half  -max -fall 0.400833  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -rise 0.184651  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -fall 0.135658  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk_half  -max -rise 0.544028  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk_half  -max -fall 0.399937  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -rise 0.184715  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -fall 0.135423  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk_half  -max -rise 0.544028  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk_half  -max -fall 0.399937  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -rise 0.184715  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -fall 0.135423  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk_half  -max -rise 0.544028  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk_half  -max -fall 0.399937  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -rise 0.184715  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -fall 0.135423  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk_half  -max -rise 0.544028  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk_half  -max -fall 0.399937  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -rise 0.184715  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -fall 0.135423  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk_half  -max -rise 0.544028  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk_half  -max -fall 0.399937  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -rise 0.184715  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -fall 0.135423  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk_half  -max -rise 0.544193  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk_half  -max -fall 0.401073  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -rise 0.184654  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -fall 0.135735  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk_half  -max -rise 0.544193  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk_half  -max -fall 0.401073  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -rise 0.184654  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -fall 0.135735  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk_half  -max -rise 0.544193  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk_half  -max -fall 0.401073  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -rise 0.184654  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -fall 0.135735  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk_half  -max -rise 0.542912  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk_half  -max -fall 0.363339  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk_half  -min -rise 0.185372  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk_half  -min -fall 0.122265  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk_half  -max -rise 0.543539  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk_half  -max -fall 0.345477  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk_half  -min -rise 0.186502  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk_half  -min -fall 0.115664  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk_half  -max -rise 0.543508  [get_ports {i_ADS1292_CONTROL[2]}]
set_input_delay -clock clk_half  -max -fall 0.346353  [get_ports {i_ADS1292_CONTROL[2]}]
set_input_delay -clock clk_half  -min -rise 0.18641  [get_ports {i_ADS1292_CONTROL[2]}]
set_input_delay -clock clk_half  -min -fall 0.115967  [get_ports {i_ADS1292_CONTROL[2]}]
set_output_delay 0  [get_ports o_SPI_CSN]
set_output_delay 0  [get_ports o_ADS1292_START]
set_output_delay 0  [get_ports o_ADS1292_RESET]
set_output_delay 0  [get_ports o_SPI_MOSI]
set_output_delay 0  [get_ports o_SPI_CLK]
set_output_delay -clock clk_half  -max -rise 1.54478  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk_half  -max -fall 1.42235  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk_half  -min -rise 0.233426  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk_half  -min -fall 0.228052  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk  -max -rise 1.77654  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk  -max -fall 1.46013  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk  -min -rise 0.170787  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk  -min -fall 0.134867  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk_half  -max -rise 0.840007  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk_half  -max -fall 0.641673  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk_half  -min -rise 0.158024  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk_half  -min -fall 0.119565  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk_half  -max -rise 0.428793  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk_half  -max -fall 0.435556  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk_half  -min -rise 0.136912  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk_half  -min -fall 0.171847  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -max -rise 0.240464  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk  -max -fall 0.21543  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk  -min -rise 0.0752865  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk  -min -fall 0.0932943  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets spi_master/i_CLK]
