###################################################################

# Created by write_sdc on Wed Aug 26 17:12:15 2020

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
[get_ports o_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports o_RSTN]
set_disable_timing [get_ports i_RSTN]
set_fanout_load 6 [get_ports o_RSTN]
set_port_fanout_number 5009 [get_ports i_CLK]
set_port_fanout_number 6 [get_ports o_RSTN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports o_RSTN]
set_max_transition 1.5 [get_ports o_RSTN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.01816 [get_ports o_RSTN]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -from [get_ports i_RSTN]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_resistance 0  [get_nets async_rstn_synchronizer/i_CLK]
