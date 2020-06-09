###################################################################

# Created by write_sdc on Tue Jun  9 05:41:18 2020

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
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {o_MPR121_REG_ADDR[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_MPR121_DATA_IN[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_MPR121_WRITE_ENABLE]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_MPR121_READ_ENABLE]
set_disable_timing [get_ports i_RSTN]
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
set_port_fanout_number 4850 [get_ports i_CLK]
set_port_fanout_number 1664 [get_ports i_RSTN]
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
set_load -pin_load 3.03356 [get_ports i_RSTN]
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
set_max_fanout 1 [get_ports i_RSTN]
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
set_load -min -pin_load 3.09413 [get_ports i_RSTN]
set_case_analysis 0 [get_ports {i_MPR121_DATA_IN[5]}]
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
set_input_delay 0  [get_ports i_I2C_SDA_IN]
set_input_delay 0  [get_ports i_I2C_SCL_IN]
set_input_delay -clock clk_half  -max -rise 0.54273  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk_half  -max -fall 0.373478  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk_half  -min -rise 0.185079  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk_half  -min -fall 0.126089  [get_ports i_MPR121_READ_ENABLE]
set_input_delay -clock clk_half  -max -rise 0.542893  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk_half  -max -fall 0.364323  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk_half  -min -rise 0.185327  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk_half  -min -fall 0.122674  [get_ports i_MPR121_WRITE_ENABLE]
set_input_delay -clock clk_half  -max -rise 0.544174  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk_half  -max -fall 0.400942  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -rise 0.184689  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk_half  -min -fall 0.13572  [get_ports {i_MPR121_DATA_IN[0]}]
set_input_delay -clock clk_half  -max -rise 0.544174  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk_half  -max -fall 0.400942  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -rise 0.184689  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk_half  -min -fall 0.13572  [get_ports {i_MPR121_DATA_IN[1]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {i_MPR121_DATA_IN[2]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {i_MPR121_DATA_IN[3]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {i_MPR121_DATA_IN[4]}]
set_input_delay -clock clk_half  -max -rise 0.544174  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk_half  -max -fall 0.400942  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -rise 0.184689  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk_half  -min -fall 0.13572  [get_ports {i_MPR121_DATA_IN[6]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {i_MPR121_DATA_IN[7]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[0]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[1]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[2]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[3]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[4]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[5]}]
set_input_delay -clock clk_half  -max -rise 0.544218  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk_half  -max -fall 0.401248  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -rise 0.184692  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk_half  -min -fall 0.135818  [get_ports {o_MPR121_REG_ADDR[6]}]
set_input_delay -clock clk_half  -max -rise 0.544174  [get_ports {o_MPR121_REG_ADDR[7]}]
set_input_delay -clock clk_half  -max -fall 0.400942  [get_ports {o_MPR121_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -rise 0.184689  [get_ports {o_MPR121_REG_ADDR[7]}]
set_input_delay -clock clk_half  -min -fall 0.13572  [get_ports {o_MPR121_REG_ADDR[7]}]
set_output_delay 0  [get_ports o_I2C_SDA_EN]
set_output_delay 0  [get_ports o_I2C_SCL_EN]
set_output_delay 0  [get_ports o_I2C_SDA_OUT]
set_output_delay 0  [get_ports o_I2C_SCL_OUT]
set_output_delay -clock clk_half  -max -rise 1.42556  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk_half  -max -fall 1.7145  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk_half  -min -rise 0.204117  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk_half  -min -fall 0.234101  [get_ports o_MPR121_FAIL]
set_output_delay -clock clk_half  -max -rise 1.53707  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk_half  -max -fall 1.77812  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk_half  -min -rise 0.199748  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk_half  -min -fall 0.252778  [get_ports o_MPR121_BUSY]
set_output_delay -clock clk_half  -max -rise 0.848639  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk_half  -max -fall 0.636509  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk_half  -min -rise 0.166181  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk_half  -min -fall 0.117312  [get_ports o_MPR121_INIT_SET]
set_output_delay -clock clk_half  -max -rise 0.614367  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk_half  -max -fall 0.558235  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[0]}]
set_output_delay -clock clk_half  -max -rise 0.614367  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk_half  -max -fall 0.558235  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[1]}]
set_output_delay -clock clk_half  -max -rise 0.614367  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk_half  -max -fall 0.558235  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[2]}]
set_output_delay -clock clk_half  -max -rise 0.614367  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk_half  -max -fall 0.558235  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[3]}]
set_output_delay -clock clk_half  -max -rise 0.547319  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk_half  -max -fall 0.52291  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[4]}]
set_output_delay -clock clk_half  -max -rise 0.547319  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk_half  -max -fall 0.52291  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[5]}]
set_output_delay -clock clk_half  -max -rise 0.547319  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk_half  -max -fall 0.52291  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[6]}]
set_output_delay -clock clk_half  -max -rise 0.547319  [get_ports {o_MPR121_DATA_OUT[7]}]
set_output_delay -clock clk_half  -max -fall 0.52291  [get_ports {o_MPR121_DATA_OUT[7]}]
set_output_delay -clock clk_half  -min -rise 0.184116  [get_ports {o_MPR121_DATA_OUT[7]}]
set_output_delay -clock clk_half  -min -fall 0.196377  [get_ports {o_MPR121_DATA_OUT[7]}]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i2c_master/i_CLK]
