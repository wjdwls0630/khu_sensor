###################################################################

# Created by write_sdc on Wed Jun 17 18:08:48 2020

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
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_CONTROL[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_CONTROL[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_CONTROL[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_CONTROL[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_CONTROL[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_CONTROL[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_REG_ADDR[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_ADS1292_DATA_IN[0]}]
set_driving_cell -min -lib_cell nid1_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 1.01908 -input_transition_fall 0.546483     \
-no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_pins spi_master/i_RSTN]
set_disable_timing [get_cells async_rstn_synchronizer]
set_disable_timing [get_cells spi_master/async_rstn_synchronizer]
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
set_port_fanout_number 4807 [get_ports i_CLK]
set_port_fanout_number 8 [get_ports i_RSTN]
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
set_load -pin_load 0.02176 [get_ports i_RSTN]
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
set_max_capacitance 0.082 [get_ports i_RSTN]
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
set_max_transition 1.5 [get_ports i_RSTN]
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
set_load -min -pin_load 0.02196 [get_ports i_RSTN]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins spi_master/i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
create_clock -name clk_half  -period 20  -waveform {0 10}
set_clock_latency 0.66  [get_clocks clk_half]
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_false_path   -through [list [get_ports i_RSTN] [get_pins spi_master/i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells spi_master/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins spi_master/i_RSTN]]
set_input_delay -min 0  [get_ports i_ADS1292_DRDY]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_ADS1292_DRDY]
set_input_delay -min 0  [get_ports i_SPI_MISO]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_SPI_MISO]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -fall 0.117784  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -fall 0.117786  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -fall 0.117784  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -fall 0.117786  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -fall 0.117784  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk_half  -min -fall 0.117786  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[5]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -fall 0.117784  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -fall 0.117784  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -rise 0.17023  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -fall 0.1175  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -rise 0.170289  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -fall 0.111959  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -rise 0.17023  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -fall 0.1175  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -rise 0.17023  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -fall 0.117501  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -rise 0.170325  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -fall 0.111454  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -fall 0.117786  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -fall 0.117784  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -rise 0.170156  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -fall 0.117786  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -rise 0.170684  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk_half  -min -fall 0.101608  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_CONTROL[0]}]
set_input_delay -clock clk_half  -min -rise 0.171363  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk_half  -min -fall 0.0934415  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_CONTROL[1]}]
set_input_delay -clock clk_half  -min -rise 0.171363  [get_ports {i_ADS1292_CONTROL[2]}]
set_input_delay -clock clk_half  -min -fall 0.0934433  [get_ports {i_ADS1292_CONTROL[2]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_ADS1292_CONTROL[2]}]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_CSN]
set_output_delay -clock clk  -max 4  [get_ports o_ADS1292_START]
set_output_delay -clock clk  -max 4  [get_ports o_ADS1292_RESET]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_MOSI]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_CLK]
set_output_delay -clock clk_half  -min -rise 0.226078  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk_half  -min -fall 0.233412  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports o_ADS1292_BUSY]
set_output_delay -clock clk  -max 4  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk  -min -rise 0.170823  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk  -min -fall 0.133346  [get_ports o_ADS1292_DATA_VALID]
set_output_delay -clock clk_half  -min -rise 0.157726  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk_half  -min -fall 0.117548  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports o_ADS1292_INIT_SET]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -rise 0.13668  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk_half  -min -fall 0.168868  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_ADS1292_REG_DATA_OUT[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[8]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[9]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[10]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[11]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[12]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[13]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[14]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[15]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[16]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[17]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[18]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[19]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[20]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[21]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[22]}]
set_output_delay -clock clk  -max 4  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk  -min -rise 0.0753267  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_output_delay -clock clk  -min -fall 0.0902762  [get_ports {o_ADS1292_DATA_OUT[23]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
