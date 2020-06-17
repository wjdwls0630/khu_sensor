###################################################################

# Created by write_sdc on Wed Jun 17 19:13:21 2020

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
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports o_CLK_DIV_2]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_CLK_DIV_2]
set_driving_cell -min -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2      \
-no_design_rule [get_ports i_RSTN]
set_driving_cell -min -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin RN -no_design_rule [get_ports i_RSTN]
set_disable_timing [get_ports i_RSTN]
set_fanout_load 426 [get_ports o_CLK_DIV_2]
set_port_fanout_number 5010 [get_ports i_CLK]
set_port_fanout_number 5 [get_ports i_RSTN]
set_port_fanout_number 426 [get_ports o_CLK_DIV_2]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01264 [get_ports i_RSTN]
set_load -pin_load 0.01035 [get_ports o_CLK_DIV_2]
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports i_RSTN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.01281 [get_ports i_RSTN]
set_load -min -pin_load 0 [get_ports o_CLK_DIV_2]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
create_generated_clock [get_pins o_CLK_DIV_2_reg/Q]  -name clk_half  -source [get_ports i_CLK]  -edges {1 3 5}
set_clock_latency 0.66  [get_clocks clk_half]
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_clock_transition -min -fall 1.2 [get_clocks clk_half]
set_clock_transition -min -rise 0.9 [get_clocks clk_half]
set_clock_transition -max -fall 1.2 [get_clocks clk_half]
set_clock_transition -max -rise 0.9 [get_clocks clk_half]
set_false_path   -from [get_ports i_RSTN]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_load 0  [get_nets o_CLK_DIV_2]
set_resistance 0  [get_nets o_CLK_DIV_2]
