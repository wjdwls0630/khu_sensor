###################################################################

# Created by write_sdc on Wed Aug 26 17:12:41 2020

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
[get_ports {o_MPR121_DATA_OUT[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {o_MPR121_DATA_OUT[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {o_MPR121_DATA_OUT[0]}]
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
[get_ports {i_MPR121_DATA_IN[7]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[7]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[6]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[6]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[5]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[5]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[4]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[4]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[3]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[3]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[2]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[2]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[1]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[1]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports {i_MPR121_DATA_IN[0]}]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports {i_MPR121_DATA_IN[0]}]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_MPR121_WRITE_ENABLE]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_MPR121_WRITE_ENABLE]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_MPR121_READ_ENABLE]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_MPR121_READ_ENABLE]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_MPR121_INIT_SET]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_MPR121_INIT_SET]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_MPR121_BUSY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_MPR121_BUSY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_MPR121_FAIL]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_MPR121_FAIL]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_I2C_SCL_IN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_I2C_SCL_IN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_I2C_SDA_IN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_I2C_SDA_IN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_I2C_SCL_OUT]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_I2C_SCL_OUT]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_I2C_SDA_OUT]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_I2C_SDA_OUT]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_I2C_SCL_EN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_I2C_SCL_EN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_I2C_SDA_EN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_I2C_SDA_EN]
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
-no_design_rule [get_ports {o_MPR121_REG_ADDR[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {o_MPR121_REG_ADDR[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_MPR121_DATA_IN[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_MPR121_DATA_IN[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_MPR121_DATA_IN[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_MPR121_DATA_IN[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_MPR121_DATA_IN[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports {i_MPR121_DATA_IN[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_MPR121_DATA_IN[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports {i_MPR121_DATA_IN[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_MPR121_WRITE_ENABLE]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49738 -input_transition_fall 0.774696  \
-no_design_rule [get_ports i_MPR121_WRITE_ENABLE]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_MPR121_READ_ENABLE]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.49665 -input_transition_fall 0.78618   \
-no_design_rule [get_ports i_MPR121_READ_ENABLE]
set_driving_cell -min -lib_cell nid1_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 1.01908 -input_transition_fall 0.546483     \
-no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_pins i2c_master/i_RSTN]
set_disable_timing [get_cells async_rstn_synchronizer]
set_disable_timing [get_cells i2c_master/async_rstn_synchronizer]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[7]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[6]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[5]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[4]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[3]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[2]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[1]}]
set_fanout_load 1 [get_ports {o_MPR121_DATA_OUT[0]}]
set_fanout_load 1 [get_ports o_MPR121_INIT_SET]
set_fanout_load 5 [get_ports o_MPR121_BUSY]
set_fanout_load 2 [get_ports o_MPR121_FAIL]
set_fanout_load 0 [get_ports o_I2C_SCL_OUT]
set_fanout_load 0 [get_ports o_I2C_SDA_OUT]
set_fanout_load 0 [get_ports o_I2C_SCL_EN]
set_fanout_load 0 [get_ports o_I2C_SDA_EN]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[7]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[6]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[5]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[4]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[3]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[2]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[1]}]
set_port_fanout_number 1 [get_ports {o_MPR121_REG_ADDR[0]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[7]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[6]}]
set_port_fanout_number 0 [get_ports {i_MPR121_DATA_IN[5]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[4]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[3]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[2]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[1]}]
set_port_fanout_number 1 [get_ports {i_MPR121_DATA_IN[0]}]
set_port_fanout_number 1 [get_ports i_MPR121_WRITE_ENABLE]
set_port_fanout_number 1 [get_ports i_MPR121_READ_ENABLE]
set_port_fanout_number 5 [get_ports o_MPR121_BUSY]
set_port_fanout_number 2 [get_ports o_MPR121_FAIL]
set_port_fanout_number 4872 [get_ports i_CLK]
set_port_fanout_number 8 [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[7]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[6]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[5]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[4]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[3]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[2]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[1]}]
set_load -pin_load 0.01035 [get_ports {o_MPR121_DATA_OUT[0]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[7]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[6]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[5]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[4]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[3]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[2]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[1]}]
set_load -pin_load 0.0019 [get_ports {o_MPR121_REG_ADDR[0]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[7]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[6]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[4]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[3]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[2]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[1]}]
set_load -pin_load 0.0019 [get_ports {i_MPR121_DATA_IN[0]}]
set_load -pin_load 0.0019 [get_ports i_MPR121_WRITE_ENABLE]
set_load -pin_load 0.0019 [get_ports i_MPR121_READ_ENABLE]
set_load -pin_load 0.01035 [get_ports o_MPR121_INIT_SET]
set_load -pin_load 0.01035 [get_ports o_MPR121_BUSY]
set_load -pin_load 0.01035 [get_ports o_MPR121_FAIL]
set_load -pin_load 0.01035 [get_ports o_I2C_SCL_OUT]
set_load -pin_load 0.01035 [get_ports o_I2C_SDA_OUT]
set_load -pin_load 0.01035 [get_ports o_I2C_SCL_EN]
set_load -pin_load 0.01035 [get_ports o_I2C_SDA_EN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.02176 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[7]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[6]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[5]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[4]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[3]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[2]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[1]}]
set_max_capacitance 0.082 [get_ports {o_MPR121_REG_ADDR[0]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[7]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[6]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[4]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[3]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[2]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[1]}]
set_max_capacitance 0.082 [get_ports {i_MPR121_DATA_IN[0]}]
set_max_capacitance 0.082 [get_ports i_MPR121_WRITE_ENABLE]
set_max_capacitance 0.082 [get_ports i_MPR121_READ_ENABLE]
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[7]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[6]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[5]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[4]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[3]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[2]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[1]}]
set_max_transition 1.5 [get_ports {o_MPR121_DATA_OUT[0]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[7]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[6]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[5]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[4]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[3]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[2]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[1]}]
set_max_transition 1.5 [get_ports {o_MPR121_REG_ADDR[0]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[7]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[6]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[4]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[3]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[2]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[1]}]
set_max_transition 1.5 [get_ports {i_MPR121_DATA_IN[0]}]
set_max_transition 1.5 [get_ports i_MPR121_WRITE_ENABLE]
set_max_transition 1.5 [get_ports i_MPR121_READ_ENABLE]
set_max_transition 1.5 [get_ports o_MPR121_INIT_SET]
set_max_transition 1.5 [get_ports o_MPR121_BUSY]
set_max_transition 1.5 [get_ports o_MPR121_FAIL]
set_max_transition 1.5 [get_ports i_RSTN]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[7]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[6]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[5]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[4]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[3]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[2]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[1]}]
set_load -min -pin_load 0.00213 [get_ports {o_MPR121_DATA_OUT[0]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[7]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[6]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[5]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[4]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[3]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[2]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[1]}]
set_load -min -pin_load 0.00195 [get_ports {o_MPR121_REG_ADDR[0]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[7]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[6]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[4]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[3]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[2]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[1]}]
set_load -min -pin_load 0.00195 [get_ports {i_MPR121_DATA_IN[0]}]
set_load -min -pin_load 0.00195 [get_ports i_MPR121_WRITE_ENABLE]
set_load -min -pin_load 0.00195 [get_ports i_MPR121_READ_ENABLE]
set_load -min -pin_load 0.00209 [get_ports o_MPR121_INIT_SET]
set_load -min -pin_load 0.01007 [get_ports o_MPR121_BUSY]
set_load -min -pin_load 0.00336 [get_ports o_MPR121_FAIL]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.02196 [get_ports i_RSTN]
set_case_analysis 0 [get_ports {i_MPR121_DATA_IN[5]}]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins i2c_master/i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
create_clock -name clk_half  -period 20  -waveform {0 10}
set_clock_latency 0.66  [get_clocks clk_half]
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_false_path   -through [list [get_ports i_RSTN] [get_pins i2c_master/i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells i2c_master/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins i2c_master/i_RSTN]]
set_input_delay -clock clk  -max 4  [get_ports {i_MPR121_DATA_IN[5]}]
set_input_delay -min 0  [get_ports i_I2C_SDA_IN]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_I2C_SDA_IN]
set_input_delay -min 0  [get_ports i_I2C_SCL_IN]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_I2C_SCL_IN]
set_input_delay -clock clk_half  -min -rise 0.170899  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk_half  -min -fall 0.101599  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk_half  -min -rise 0.170648  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk_half  -min -fall 0.101874  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -fall 0.117854  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -fall 0.117852  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -fall 0.117696  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -fall 0.117696  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -fall 0.117697  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -fall 0.117852  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -fall 0.117696  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -fall 0.117968  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -fall 0.117697  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -fall 0.117696  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -fall 0.117697  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -fall 0.117696  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -fall 0.117697  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -fall 0.117696  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -rise 0.170193  [get_ports {o_MPR121_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -fall 0.117854  [get_ports {o_MPR121_REG_ADDR[7]}]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay -clock clk  -max 4  [get_ports o_I2C_SDA_EN]
set_output_delay -clock clk  -max 4  [get_ports o_I2C_SCL_EN]
set_output_delay -clock clk  -max 4  [get_ports o_I2C_SDA_OUT]
set_output_delay -clock clk  -max 4  [get_ports o_I2C_SCL_OUT]
set_output_delay -clock clk_half  -min -rise 0.203966  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk_half  -min -fall 0.233169  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk_half  -min -rise 0.199527  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk_half  -min -fall 0.251064  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk_half  -min -rise 0.165286  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk_half  -min -fall 0.11502  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -rise 0.183374  [get_ports {o_MPR121_DATA_OUT[7]}]
set_output_delay -clock clk_half  -min -fall 0.193962  [get_ports {o_MPR121_DATA_OUT[7]}]
set_output_delay -clock clk  -max 4  -add_delay  [get_ports {o_MPR121_DATA_OUT[7]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
