###################################################################

# Created by write_sdc on Thu Aug 27 13:00:23 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 0
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells async_rstn_synchronizer]
set_load -pin_load 0 [get_ports i_CLK]
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
set_load -min -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells async_rstn_synchronizer/o_RSTN_reg]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[7]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[6]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[5]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[4]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[3]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[2]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[1]}]
set_input_delay -clock clk  -max 4  [get_ports {i_TX_Byte[0]}]
set_input_delay -clock clk  -max 4  [get_ports i_TX_DV]
set_input_delay -clock clk  -max 4  [get_ports i_SPI_MISO]
set_output_delay -clock clk  -max 4  [get_ports o_TX_Ready]
set_output_delay -clock clk  -max 4  [get_ports o_RX_DV]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[7]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[6]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[5]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[4]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[3]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[2]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[1]}]
set_output_delay -clock clk  -max 4  [get_ports {o_RX_Byte[0]}]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_Clk]
set_output_delay -clock clk  -max 4  [get_ports o_SPI_MOSI]
set_resistance 0  [get_nets i_RSTN]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
