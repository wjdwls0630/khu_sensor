###################################################################

# Created by write_sdc on Tue Jun  9 05:42:22 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_wire_load_mode enclosed
set_max_area 0
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
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[7]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[6]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[5]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[4]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[3]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[2]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[1]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports {i_TX_Byte[0]}]
set_driving_cell -lib_cell fd4qd1_hd -library std150e_wst_105_p125 -pin Q      \
-from_pin SN -no_design_rule [get_ports i_TX_DV]
set_disable_timing [get_ports i_RSTN]
set_fanout_load 8 [get_ports o_TX_Ready]
set_fanout_load 5 [get_ports o_RX_DV]
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
set_port_fanout_number 113 [get_ports i_RSTN]
set_port_fanout_number 149 [get_ports i_CLK]
set_port_fanout_number 1 [get_ports {i_TX_Byte[7]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[6]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[5]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[4]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[3]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[2]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[1]}]
set_port_fanout_number 1 [get_ports {i_TX_Byte[0]}]
set_port_fanout_number 1 [get_ports i_TX_DV]
set_port_fanout_number 8 [get_ports o_TX_Ready]
set_port_fanout_number 5 [get_ports o_RX_DV]
set_port_fanout_number 2 [get_ports {o_RX_Byte[7]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[6]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[5]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[4]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[3]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[2]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[1]}]
set_port_fanout_number 2 [get_ports {o_RX_Byte[0]}]
set_load -pin_load 0.19744 [get_ports i_RSTN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.00275 [get_ports {i_TX_Byte[7]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[6]}]
set_load -pin_load 0.00158 [get_ports {i_TX_Byte[5]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[4]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[3]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[2]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[1]}]
set_load -pin_load 0.00152 [get_ports {i_TX_Byte[0]}]
set_load -pin_load 0.00153 [get_ports i_TX_DV]
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
set_max_capacitance 0.082 [get_ports {i_TX_Byte[7]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[6]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[5]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[4]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[3]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[2]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[1]}]
set_max_capacitance 0.082 [get_ports {i_TX_Byte[0]}]
set_max_capacitance 0.082 [get_ports i_TX_DV]
set_max_fanout 1 [get_ports i_RSTN]
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
set_load -min -pin_load 0.20083 [get_ports i_RSTN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.00279 [get_ports {i_TX_Byte[7]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[6]}]
set_load -min -pin_load 0.00163 [get_ports {i_TX_Byte[5]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[4]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[3]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[2]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[1]}]
set_load -min -pin_load 0.00156 [get_ports {i_TX_Byte[0]}]
set_load -min -pin_load 0.00159 [get_ports i_TX_DV]
set_load -min -pin_load 0.02 [get_ports o_TX_Ready]
set_load -min -pin_load 0.01302 [get_ports o_RX_DV]
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
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RSTN]
set_input_delay 0  [get_ports i_RSTN]
set_input_delay 0  [get_ports i_SPI_MISO]
set_input_delay -clock clk  -max -rise 0.54326  [get_ports i_TX_DV]
set_input_delay -clock clk  -max -fall 0.35341  [get_ports i_TX_DV]
set_input_delay -clock clk  -min -rise 0.186999  [get_ports i_TX_DV]
set_input_delay -clock clk  -min -fall 0.119183  [get_ports i_TX_DV]
set_input_delay -clock clk  -max -rise 0.546914  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -max -fall 0.415525  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -min -rise 0.185058  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -min -fall 0.140325  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -max -rise 0.546914  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -max -fall 0.415525  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -min -rise 0.185058  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -min -fall 0.140325  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -max -rise 0.546914  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -max -fall 0.415525  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -min -rise 0.185058  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -min -fall 0.140325  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -max -rise 0.546914  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -max -fall 0.415525  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -min -rise 0.185058  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -min -fall 0.140325  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -max -rise 0.546914  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -max -fall 0.415525  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -min -rise 0.185058  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -min -fall 0.140325  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -max -rise 0.546855  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -max -fall 0.415318  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -min -rise 0.18508  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -min -fall 0.140293  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -max -rise 0.546914  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -max -fall 0.415525  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -min -rise 0.185058  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -min -fall 0.140325  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -max -rise 0.545725  [get_ports {i_TX_Byte[7]}]
set_input_delay -clock clk  -max -fall 0.411287  [get_ports {i_TX_Byte[7]}]
set_input_delay -clock clk  -min -rise 0.184747  [get_ports {i_TX_Byte[7]}]
set_input_delay -clock clk  -min -fall 0.139031  [get_ports {i_TX_Byte[7]}]
set_output_delay 0  [get_ports o_SPI_MOSI]
set_output_delay 0  [get_ports o_SPI_Clk]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[0]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[0]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[0]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[1]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[1]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[1]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[2]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[2]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[2]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[3]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[3]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[3]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[4]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[4]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[4]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[5]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[5]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[5]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[6]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[6]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[6]}]
set_output_delay -clock clk  -max -rise 0.251028  [get_ports {o_RX_Byte[7]}]
set_output_delay -clock clk  -max -fall 0.288426  [get_ports {o_RX_Byte[7]}]
set_output_delay -clock clk  -min -0.01  [get_ports {o_RX_Byte[7]}]
set_output_delay -clock clk  -max -rise 3.49502  [get_ports o_RX_DV]
set_output_delay -clock clk  -max -fall 2.66674  [get_ports o_RX_DV]
set_output_delay -clock clk  -min -rise 0.19785  [get_ports o_RX_DV]
set_output_delay -clock clk  -min -fall 0.145081  [get_ports o_RX_DV]
set_output_delay -clock clk  -max -rise 1.96714  [get_ports o_TX_Ready]
set_output_delay -clock clk  -max -fall 1.87948  [get_ports o_TX_Ready]
set_output_delay -clock clk  -min -rise 0.0396972  [get_ports o_TX_Ready]
set_output_delay -clock clk  -min -fall 0.118412  [get_ports o_TX_Ready]
