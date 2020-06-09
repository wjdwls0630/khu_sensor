###################################################################

# Created by write_sdc on Tue Jun  9 06:20:00 2020

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
[get_ports i_CLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_CLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports i_RSTN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports i_RSTN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports UART_RXD]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports UART_RXD]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports UART_TXD]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports UART_TXD]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports MPR121_SCL_IN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports MPR121_SCL_IN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports MPR121_SDA_IN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports MPR121_SDA_IN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports MPR121_SCL_OUT]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports MPR121_SCL_OUT]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports MPR121_SDA_OUT]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports MPR121_SDA_OUT]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports MPR121_SCL_EN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports MPR121_SCL_EN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports MPR121_SDA_EN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports MPR121_SDA_EN]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_SCLK]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_SCLK]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_MISO]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_MISO]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_MOSI]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_MOSI]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_DRDY]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_DRDY]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_RESET]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_RESET]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_START]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_START]
set_wire_load_model -name l13_e_100k_4lm -library std150e_wst_105_p125         \
[get_ports ADS1292_CSN]
set_wire_load_model -min -name l13_e_100k_4lm -library std150e_bst_135_n040    \
[get_ports ADS1292_CSN]
set_driving_cell -min -lib_cell phsoscm3 -library std150e_wst_105_p125 -pin YN \
-from_pin PADA -no_design_rule [get_ports i_CLK]
set_driving_cell -lib_cell phic -library std150e_wst_105_p125 -pin Y -from_pin \
PAD -no_design_rule [get_ports UART_RXD]
set_driving_cell -lib_cell phbct12 -library std150e_wst_105_p125 -pin Y        \
-from_pin PAD -no_design_rule [get_ports MPR121_SCL_IN]
set_driving_cell -lib_cell phbct12 -library std150e_wst_105_p125 -pin Y        \
-from_pin PAD -no_design_rule [get_ports MPR121_SDA_IN]
set_driving_cell -lib_cell phic -library std150e_wst_105_p125 -pin Y -from_pin \
PAD -no_design_rule [get_ports ADS1292_MISO]
set_driving_cell -lib_cell phic -library std150e_wst_105_p125 -pin Y -from_pin \
PAD -no_design_rule [get_ports ADS1292_DRDY]
set_disable_timing [get_ports i_RSTN]
set_fanout_load 1 [get_ports UART_TXD]
set_fanout_load 1 [get_ports MPR121_SCL_OUT]
set_fanout_load 1 [get_ports MPR121_SDA_OUT]
set_fanout_load 1 [get_ports MPR121_SCL_EN]
set_fanout_load 1 [get_ports MPR121_SDA_EN]
set_fanout_load 1 [get_ports ADS1292_SCLK]
set_fanout_load 1 [get_ports ADS1292_MOSI]
set_fanout_load 1 [get_ports ADS1292_RESET]
set_fanout_load 1 [get_ports ADS1292_START]
set_fanout_load 1 [get_ports ADS1292_CSN]
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports UART_TXD]
set_load -pin_load 0.01035 [get_ports MPR121_SCL_OUT]
set_load -pin_load 0.01035 [get_ports MPR121_SDA_OUT]
set_load -pin_load 0.01035 [get_ports MPR121_SCL_EN]
set_load -pin_load 0.01035 [get_ports MPR121_SDA_EN]
set_load -pin_load 0.01035 [get_ports ADS1292_SCLK]
set_load -pin_load 0.01035 [get_ports ADS1292_MOSI]
set_load -pin_load 0.01035 [get_ports ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports ADS1292_START]
set_load -pin_load 0.01035 [get_ports ADS1292_CSN]
set_max_capacitance 2.09 [get_ports i_CLK]
set_max_capacitance 2.09 [get_ports UART_RXD]
set_max_capacitance 2.09 [get_ports MPR121_SCL_IN]
set_max_capacitance 2.09 [get_ports MPR121_SDA_IN]
set_max_capacitance 2.09 [get_ports ADS1292_MISO]
set_max_capacitance 2.09 [get_ports ADS1292_DRDY]
set_max_fanout 1 [get_ports i_RSTN]
set_max_transition 1.5 [get_ports i_CLK]
set_max_transition 1.5 [get_ports UART_RXD]
set_max_transition 1.5 [get_ports UART_TXD]
set_max_transition 1.5 [get_ports MPR121_SCL_IN]
set_max_transition 1.5 [get_ports MPR121_SDA_IN]
set_max_transition 1.5 [get_ports MPR121_SCL_OUT]
set_max_transition 1.5 [get_ports MPR121_SDA_OUT]
set_max_transition 1.5 [get_ports MPR121_SCL_EN]
set_max_transition 1.5 [get_ports MPR121_SDA_EN]
set_max_transition 1.5 [get_ports ADS1292_SCLK]
set_max_transition 1.5 [get_ports ADS1292_MISO]
set_max_transition 1.5 [get_ports ADS1292_MOSI]
set_max_transition 1.5 [get_ports ADS1292_DRDY]
set_max_transition 1.5 [get_ports ADS1292_RESET]
set_max_transition 1.5 [get_ports ADS1292_START]
set_max_transition 1.5 [get_ports ADS1292_CSN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_load -min -pin_load 0.04429 [get_ports UART_TXD]
set_load -min -pin_load 0.04439 [get_ports MPR121_SCL_OUT]
set_load -min -pin_load 0.04439 [get_ports MPR121_SDA_OUT]
set_load -min -pin_load 0.00213 [get_ports MPR121_SCL_EN]
set_load -min -pin_load 0.05232 [get_ports MPR121_SDA_EN]
set_load -min -pin_load 0.04429 [get_ports ADS1292_SCLK]
set_load -min -pin_load 0.04429 [get_ports ADS1292_MOSI]
set_load -min -pin_load 0.04429 [get_ports ADS1292_RESET]
set_load -min -pin_load 0.04429 [get_ports ADS1292_START]
set_load -min -pin_load 0.04429 [get_ports ADS1292_CSN]
set_ideal_network [get_ports i_RSTN]
create_clock -name clk_pad  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk_pad]
create_generated_clock [get_pins divider_by_2/o_CLK_DIV_2]  -name clk_half  -source [get_pins divider_by_2/i_CLK]  -divide_by 2
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_clock_transition -min -fall 1.9 [get_clocks clk_half]
set_clock_transition -min -rise 1.4 [get_clocks clk_half]
set_clock_transition -max -fall 1.9 [get_clocks clk_half]
set_clock_transition -max -rise 1.4 [get_clocks clk_half]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 1.4 [get_clocks clk]
set_clock_transition -min -rise 1.4 [get_clocks clk]
set_clock_transition -max -fall 1.9 [get_clocks clk]
set_clock_transition -min -fall 1.9 [get_clocks clk]
set_false_path   -from [get_ports i_RSTN]
set_input_delay 0  [get_ports i_RSTN]
set_input_delay -max -rise 1.21334  [get_ports ADS1292_DRDY]
set_input_delay -max -fall 1.27581  [get_ports ADS1292_DRDY]
set_input_delay -min -rise 0.663189  [get_ports ADS1292_DRDY]
set_input_delay -min -fall 0.703934  [get_ports ADS1292_DRDY]
set_input_delay -max -rise 1.21334  [get_ports ADS1292_MISO]
set_input_delay -max -fall 1.27581  [get_ports ADS1292_MISO]
set_input_delay -min -rise 0.663387  [get_ports ADS1292_MISO]
set_input_delay -min -fall 0.704143  [get_ports ADS1292_MISO]
set_input_delay -max -rise 1.21434  [get_ports MPR121_SDA_IN]
set_input_delay -max -fall 1.27726  [get_ports MPR121_SDA_IN]
set_input_delay -min -rise 0.663988  [get_ports MPR121_SDA_IN]
set_input_delay -min -fall 0.703574  [get_ports MPR121_SDA_IN]
set_input_delay -max -rise 1.21434  [get_ports MPR121_SCL_IN]
set_input_delay -max -fall 1.27726  [get_ports MPR121_SCL_IN]
set_input_delay -min -rise 0.663988  [get_ports MPR121_SCL_IN]
set_input_delay -min -fall 0.703574  [get_ports MPR121_SCL_IN]
set_input_delay -max -rise 1.21334  [get_ports UART_RXD]
set_input_delay -max -fall 1.27581  [get_ports UART_RXD]
set_input_delay -min -rise 0.663071  [get_ports UART_RXD]
set_input_delay -min -fall 0.703811  [get_ports UART_RXD]
set_output_delay -max -rise 2.6352  [get_ports ADS1292_CSN]
set_output_delay -max -fall 2.57789  [get_ports ADS1292_CSN]
set_output_delay -min -rise 1.34006  [get_ports ADS1292_CSN]
set_output_delay -min -fall 1.34315  [get_ports ADS1292_CSN]
set_output_delay -max -rise 2.63786  [get_ports ADS1292_START]
set_output_delay -max -fall 2.57974  [get_ports ADS1292_START]
set_output_delay -min -rise 1.34126  [get_ports ADS1292_START]
set_output_delay -min -fall 1.34418  [get_ports ADS1292_START]
set_output_delay -max -rise 2.63748  [get_ports ADS1292_RESET]
set_output_delay -max -fall 2.57908  [get_ports ADS1292_RESET]
set_output_delay -min -rise 1.34109  [get_ports ADS1292_RESET]
set_output_delay -min -fall 1.34366  [get_ports ADS1292_RESET]
set_output_delay -max -rise 2.63429  [get_ports ADS1292_MOSI]
set_output_delay -max -fall 2.57789  [get_ports ADS1292_MOSI]
set_output_delay -min -rise 1.3396  [get_ports ADS1292_MOSI]
set_output_delay -min -fall 1.34335  [get_ports ADS1292_MOSI]
set_output_delay -max -rise 2.59523  [get_ports ADS1292_SCLK]
set_output_delay -max -fall 2.55767  [get_ports ADS1292_SCLK]
set_output_delay -min -rise 1.32185  [get_ports ADS1292_SCLK]
set_output_delay -min -fall 1.33453  [get_ports ADS1292_SCLK]
set_output_delay -max -rise 2.94061  [get_ports MPR121_SDA_EN]
set_output_delay -max -fall 2.6068  [get_ports MPR121_SDA_EN]
set_output_delay -min -rise 1.40075  [get_ports MPR121_SDA_EN]
set_output_delay -min -fall 1.22041  [get_ports MPR121_SDA_EN]
set_output_delay -max -rise 2.87717  [get_ports MPR121_SCL_EN]
set_output_delay -max -fall 3.44412  [get_ports MPR121_SCL_EN]
set_output_delay -min -rise 1.32902  [get_ports MPR121_SCL_EN]
set_output_delay -min -fall 1.61984  [get_ports MPR121_SCL_EN]
set_output_delay -max -rise 2.6828  [get_ports MPR121_SDA_OUT]
set_output_delay -max -fall 2.59995  [get_ports MPR121_SDA_OUT]
set_output_delay -min -rise 1.35656  [get_ports MPR121_SDA_OUT]
set_output_delay -min -fall 1.35311  [get_ports MPR121_SDA_OUT]
set_output_delay -max -rise 2.72746  [get_ports MPR121_SCL_OUT]
set_output_delay -max -fall 2.62576  [get_ports MPR121_SCL_OUT]
set_output_delay -min -rise 1.37178  [get_ports MPR121_SCL_OUT]
set_output_delay -min -fall 1.36402  [get_ports MPR121_SCL_OUT]
set_output_delay -max -rise 2.63448  [get_ports UART_TXD]
set_output_delay -max -fall 2.57752  [get_ports UART_TXD]
set_output_delay -min -rise 1.33971  [get_ports UART_TXD]
set_output_delay -min -fall 1.34298  [get_ports UART_TXD]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_load 0  [get_nets i_RSTN]
set_load 0  [get_nets w_CLOCK_HALF]
set_resistance 0  [get_nets w_CLOCK_HALF]
set_resistance 0  [get_nets divider_by_2/i_CLK]
set_resistance 0  [get_nets divider_by_2/i_RSTN]
