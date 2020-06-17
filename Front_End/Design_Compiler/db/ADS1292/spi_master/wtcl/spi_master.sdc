###################################################################

# Created by write_sdc on Wed Jun 17 18:07:38 2020

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
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[7]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[7]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[6]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[6]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[5]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[5]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[4]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[4]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[3]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[3]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[2]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[2]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[1]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[1]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {i_TX_Byte[0]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {i_TX_Byte[0]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_TX_DV]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_TX_DV]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_TX_Ready]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_TX_Ready]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_RX_DV]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_RX_DV]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[7]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[7]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[6]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[6]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[5]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[5]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[4]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[4]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[3]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[3]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[2]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[2]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[1]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[1]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports {o_RX_Byte[0]}]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports {o_RX_Byte[0]}]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_SPI_Clk]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_SPI_Clk]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports i_SPI_MISO]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports i_SPI_MISO]
set_wire_load_model -name l13_e_5000_4lm -library std150e_wst_105_p125         \
[get_ports o_SPI_MOSI]
set_wire_load_model -min -name l13_e_5000_4lm -library std150e_bst_135_n040    \
[get_ports o_SPI_MOSI]
set_driving_cell -min -lib_cell ivd4_hd -library std150e_wst_105_p125 -pin Y   \
-from_pin A -input_transition_rise 0.583618 -input_transition_fall 0.37762     \
-no_design_rule [get_ports i_RSTN]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[7]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[7]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[6]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[6]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[5]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[5]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[4]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[4]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[3]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[3]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[2]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[2]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[1]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[1]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports {i_TX_Byte[0]}]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports {i_TX_Byte[0]}]
set_driving_cell -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_TX_DV]
set_driving_cell -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125 -pin  \
Q -from_pin RN -input_transition_rise 1.43067 -input_transition_fall 0.778061  \
-no_design_rule [get_ports i_TX_DV]
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells async_rstn_synchronizer]
set_fanout_load 5 [get_ports o_TX_Ready]
set_fanout_load 4 [get_ports o_RX_DV]
set_fanout_load 2 [get_ports {o_RX_Byte[7]}]
set_fanout_load 2 [get_ports {o_RX_Byte[6]}]
set_fanout_load 2 [get_ports {o_RX_Byte[5]}]
set_fanout_load 2 [get_ports {o_RX_Byte[4]}]
set_fanout_load 2 [get_ports {o_RX_Byte[3]}]
set_fanout_load 2 [get_ports {o_RX_Byte[2]}]
set_fanout_load 2 [get_ports {o_RX_Byte[1]}]
set_fanout_load 2 [get_ports {o_RX_Byte[0]}]
set_fanout_load 0 [get_ports o_SPI_Clk]
set_fanout_load 0 [get_ports o_SPI_MOSI]
set_port_fanout_number 106 [get_ports i_RSTN]
set_port_fanout_number 151 [get_ports i_CLK]
set_port_fanout_number 1 [get_ports {i_TX_Byte[7]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[6]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[5]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[4]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[3]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[2]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[1]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[0]}]
set_port_fanout_number 1 [get_ports i_TX_DV]
set_port_fanout_number 5 [get_ports o_TX_Ready]
set_port_fanout_number 4 [get_ports o_RX_DV]
set_port_fanout_number 2 [get_ports {o_RX_Byte[7]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[6]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[5]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[4]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[3]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[2]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[1]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[0]}]
set_load -pin_load 0.18227 [get_ports i_RSTN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.00275 [get_ports {i_TX_Byte[7]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[6]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[5]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[4]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[3]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[2]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[1]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[0]}]
set_load -pin_load 0.0015 [get_ports i_TX_DV]
set_load -pin_load 0.01035 [get_ports o_TX_Ready]
set_load -pin_load 0.01035 [get_ports o_RX_DV]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[7]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[6]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[5]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[4]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[3]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[2]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[1]}]
set_load -pin_load 0.01035 [get_ports {o_RX_Byte[0]}]
set_load -pin_load 0.01035 [get_ports o_SPI_Clk]
set_load -pin_load 0.01035 [get_ports o_SPI_MOSI]
set_max_capacitance 0.348 [get_ports i_RSTN]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[7]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[6]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[5]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[4]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[3]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[2]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[1]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[0]}]
set_max_capacitance 0.082 [get_ports i_TX_DV]
set_max_transition 1.5 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports {i_TX_Byte[7]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[6]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[5]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[4]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[3]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[2]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[1]}]
set_max_transition 1.5 [get_ports {i_TX_Byte[0]}]
set_max_transition 1.5 [get_ports i_TX_DV]
set_max_transition 1.5 [get_ports o_TX_Ready]
set_max_transition 1.5 [get_ports o_RX_DV]
set_max_transition 1.5 [get_ports {o_RX_Byte[7]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[6]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[5]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[4]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[3]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[2]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[1]}]
set_max_transition 1.5 [get_ports {o_RX_Byte[0]}]
set_load -min -pin_load 0.18947 [get_ports i_RSTN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.00279 [get_ports {i_TX_Byte[7]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[6]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[5]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[4]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[3]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[2]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[1]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[0]}]
set_load -min -pin_load 0.00155 [get_ports i_TX_DV]
set_load -min -pin_load 0.01157 [get_ports o_TX_Ready]
set_load -min -pin_load 0.01072 [get_ports o_RX_DV]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[7]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[6]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[5]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[4]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[3]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[2]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[1]}]
set_load -min -pin_load 0.00301 [get_ports {o_RX_Byte[0]}]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_ports i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_input_delay -clock clk  -max 4  [get_ports i_SPI_MISO]
set_input_delay -min 0  -add_delay  [get_ports i_SPI_MISO]
set_input_delay -clock clk  -max 4  [get_ports i_TX_DV]
set_input_delay -clock clk  -min -rise 0.17215  [get_ports i_TX_DV]
set_input_delay -clock clk  -min -fall 0.0973152  [get_ports i_TX_DV]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -min -fall 0.122971  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[7]}]
set_input_delay -clock clk  -min -rise 0.170126  [get_ports {i_TX_Byte[7]}]
set_input_delay -clock clk  -min -fall 0.121729  [get_ports {i_TX_Byte[7]}]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_MOSI]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_Clk]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[0]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[0]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[1]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[2]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[3]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[4]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[5]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[6]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[7]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[7]}]
set_output_delay -clock clk  -max 4  [get_ports o_RX_DV]
set_output_delay -clock clk  -min -rise 0.161348  [get_ports o_RX_DV]
set_output_delay -clock clk  -min -fall 0.170133  [get_ports o_RX_DV]
set_output_delay -clock clk  -max 4  [get_ports o_TX_Ready]
set_output_delay -clock clk  -min -rise 0.182609  [get_ports o_TX_Ready]
set_output_delay -clock clk  -min -fall 0.220243  [get_ports o_TX_Ready]
set_resistance 0  [get_nets i_RSTN]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
