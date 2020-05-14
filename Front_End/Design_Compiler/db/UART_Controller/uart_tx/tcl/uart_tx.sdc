###################################################################

<<<<<<< HEAD
# Created by write_sdc on Wed May 13 09:57:39 2020
=======
# Created by write_sdc on Wed May 13 11:40:48 2020
>>>>>>> jin

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_disable_timing [get_ports i_RST]
set_load -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RST]
create_clock [get_ports i_CLK]  -name clk  -period 20  -waveform {0 10}
set_clock_uncertainty 0.3  [get_clocks clk]
set_clock_transition -max -fall 0.5 [get_clocks clk]
set_clock_transition -max -rise 0.5 [get_clocks clk]
set_false_path   -from [get_ports i_RST]
