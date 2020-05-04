###################################################################

# Created by write_sdc on Mon May  4 13:35:15 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_ideal_network [get_ports i_CLK]
create_clock [get_ports i_CLK]  -name clk  -period 40  -waveform {0 20}
