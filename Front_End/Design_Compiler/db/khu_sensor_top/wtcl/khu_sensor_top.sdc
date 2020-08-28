###################################################################

# Created by write_sdc on Wed Aug 26 17:18:36 2020

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
-from_pin PADA -input_transition_rise 0.9 -input_transition_fall 1.2           \
-no_design_rule [get_ports i_CLK]
set_driving_cell -min -rise -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin CK -input_transition_rise 0.9 -input_transition_fall 1.2      \
-no_design_rule [get_ports i_RSTN]
set_driving_cell -min -fall -lib_cell fd2qd1_hd -library std150e_wst_105_p125  \
-pin Q -from_pin RN -no_design_rule [get_ports i_RSTN]
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
set_disable_timing [get_pins ads1292_controller/i_RSTN]
set_disable_timing [get_pins ads1292_filter/i_RSTN]
set_disable_timing [get_pins mpr121_controller/i_RSTN]
set_disable_timing [get_pins sensor_core/i_RSTN]
set_disable_timing [get_pins uart_controller/i_RSTN]
set_disable_timing [get_pins ads1292_controller/spi_master/i_RSTN]
set_disable_timing [get_pins ads1292_filter/iir_hpf/i_RSTN]
set_disable_timing [get_pins ads1292_filter/iir_notch/i_RSTN]
set_disable_timing [get_pins ads1292_filter/iir_lpf/i_RSTN]
set_disable_timing [get_pins mpr121_controller/i2c_master/i_RSTN]
set_disable_timing [get_pins uart_controller/uart_rx/i_RSTN]
set_disable_timing [get_pins uart_controller/uart_tx/i_RSTN]
set_disable_timing [get_cells async_rstn_glitch_synchronizer]
set_disable_timing [get_cells                                                  \
ads1292_controller/spi_master/async_rstn_synchronizer]
set_disable_timing [get_cells ads1292_controller/async_rstn_synchronizer]
set_disable_timing [get_cells ads1292_filter/iir_hpf/async_rst_synchronizer]
set_disable_timing [get_cells ads1292_filter/iir_hpf/async_rstn_synchronizer]
set_disable_timing [get_cells ads1292_filter/iir_notch/async_rst_synchronizer]
set_disable_timing [get_cells ads1292_filter/iir_notch/async_rstn_synchronizer]
set_disable_timing [get_cells ads1292_filter/iir_lpf/async_rst_synchronizer]
set_disable_timing [get_cells ads1292_filter/iir_lpf/async_rstn_synchronizer]
set_disable_timing [get_cells ads1292_filter/async_rst_synchronizer]
set_disable_timing [get_cells ads1292_filter/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
mpr121_controller/i2c_master/async_rstn_synchronizer]
set_disable_timing [get_cells mpr121_controller/async_rstn_synchronizer]
set_disable_timing [get_cells sensor_core/async_rst_synchronizer]
set_disable_timing [get_cells uart_controller/uart_rx/async_rst_synchronizer]
set_disable_timing [get_cells uart_controller/uart_tx/async_rst_synchronizer]
set_disable_timing [get_cells uart_controller/async_rstn_synchronizer]
set_disable_timing [get_cells uart_controller/async_rst_synchronizer]
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
set_max_capacitance 0.082 [get_ports i_RSTN]
set_max_capacitance 2.09 [get_ports UART_RXD]
set_max_capacitance 2.09 [get_ports MPR121_SCL_IN]
set_max_capacitance 2.09 [get_ports MPR121_SDA_IN]
set_max_capacitance 2.09 [get_ports ADS1292_MISO]
set_max_capacitance 2.09 [get_ports ADS1292_DRDY]
set_max_transition 1.5 [get_ports i_CLK]
set_max_transition 1.5 [get_ports i_RSTN]
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
set_load -min -pin_load 0.00488 [get_ports UART_TXD]
set_load -min -pin_load 0.04439 [get_ports MPR121_SCL_OUT]
set_load -min -pin_load 0.04439 [get_ports MPR121_SDA_OUT]
set_load -min -pin_load 0.00213 [get_ports MPR121_SCL_EN]
set_load -min -pin_load 0.05232 [get_ports MPR121_SDA_EN]
set_load -min -pin_load 0.04429 [get_ports ADS1292_SCLK]
set_load -min -pin_load 0.04429 [get_ports ADS1292_MOSI]
set_load -min -pin_load 0.04429 [get_ports ADS1292_RESET]
set_load -min -pin_load 0.04429 [get_ports ADS1292_START]
set_load -min -pin_load 0.04429 [get_ports ADS1292_CSN]
set_case_analysis 0 [get_pins {mpr121_controller/i_MPR121_DATA_IN[5]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[52]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[23]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[22]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[21]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[20]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[6]}]
set_case_analysis 0 [get_pins {uart_controller/i_UART_DATA_TX[2]}]
set_case_analysis 0 [get_pins uart_controller/i_CORE_BUSY]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins ads1292_controller/i_RSTN]
set_ideal_network [get_pins ads1292_filter/i_RSTN]
set_ideal_network [get_pins mpr121_controller/i_RSTN]
set_ideal_network [get_pins sensor_core/i_RSTN]
set_ideal_network [get_pins uart_controller/i_RSTN]
set_ideal_network [get_pins uart_controller/uart_rx/i_RSTN]
set_ideal_network [get_pins uart_controller/uart_tx/i_RSTN]
set_ideal_network [get_pins mpr121_controller/i2c_master/i_RSTN]
set_ideal_network [get_pins ads1292_filter/iir_hpf/i_RSTN]
set_ideal_network [get_pins ads1292_filter/iir_notch/i_RSTN]
set_ideal_network [get_pins ads1292_filter/iir_lpf/i_RSTN]
set_ideal_network [get_pins ads1292_controller/spi_master/i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
create_clock -name clk_pad  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk_pad]
create_generated_clock [get_pins divider_by_2/o_CLK_DIV_2]  -name clk_half  -source [get_pins divider_by_2/i_CLK]  -edges {1 3 5}
set_clock_latency 0.66  [get_clocks clk_half]
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_clock_transition -min -fall 1.2 [get_clocks clk_half]
set_clock_transition -min -rise 0.9 [get_clocks clk_half]
set_clock_transition -max -fall 1.2 [get_clocks clk_half]
set_clock_transition -max -rise 0.9 [get_clocks clk_half]
set_false_path   -through [list [get_ports i_RSTN] [get_pins uart_controller/i_RSTN] [get_pins \
uart_controller/uart_rx/i_RSTN] [get_pins uart_controller/uart_tx/i_RSTN]      \
[get_pins sensor_core/i_RSTN] [get_pins ads1292_filter/i_RSTN] [get_pins       \
ads1292_filter/iir_lpf/i_RSTN] [get_pins ads1292_filter/iir_hpf/i_RSTN]        \
[get_pins ads1292_filter/iir_notch/i_RSTN] [get_pins                           \
ads1292_controller/i_RSTN] [get_pins ads1292_controller/spi_master/i_RSTN]     \
[get_pins mpr121_controller/i_RSTN] [get_pins                                  \
mpr121_controller/i2c_master/i_RSTN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells                                                                \
async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [list [get_cells uart_controller/async_rstn_synchronizer/o_RSTN_reg]      \
[get_cells uart_controller/async_rst_synchronizer/o_RST_reg] [get_cells        \
uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg] [get_cells           \
uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg] [get_cells           \
sensor_core/async_rst_synchronizer/o_RST_reg] [get_cells                       \
ads1292_filter/async_rstn_synchronizer/o_RSTN_reg] [get_cells                  \
ads1292_filter/async_rst_synchronizer/o_RST_reg] [get_cells                    \
ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg] [get_cells          \
ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg] [get_cells            \
ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg] [get_cells          \
ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg] [get_cells            \
ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg] [get_cells        \
ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg] [get_cells          \
ads1292_controller/async_rstn_synchronizer/o_RSTN_reg] [get_cells              \
ads1292_controller/spi_master/async_rstn_synchronizer/o_RSTN_reg] [get_cells   \
mpr121_controller/async_rstn_synchronizer/o_RSTN_reg] [get_cells               \
mpr121_controller/i2c_master/async_rstn_synchronizer/o_RSTN_reg]]
set_false_path   -through [list [get_pins uart_controller/i_RSTN] [get_pins                    \
uart_controller/uart_rx/i_RSTN] [get_pins uart_controller/uart_tx/i_RSTN]]
set_false_path   -through [list [get_pins uart_controller/i_RSTN]]
set_false_path   -to [get_cells uart_controller/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells uart_controller/async_rst_synchronizer/o_RST_reg]
set_false_path   -to [list [get_cells                                                          \
uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg] [get_cells           \
uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg]]
set_false_path   -to [get_cells uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins uart_controller/uart_rx/i_RSTN]]
set_false_path   -to [get_cells uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins uart_controller/uart_tx/i_RSTN]]
set_false_path   -to [get_cells sensor_core/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins sensor_core/i_RSTN]]
set_false_path   -through [list [get_pins ads1292_filter/i_RSTN] [get_pins                     \
ads1292_filter/iir_lpf/i_RSTN] [get_pins ads1292_filter/iir_hpf/i_RSTN]        \
[get_pins ads1292_filter/iir_notch/i_RSTN]]
set_false_path   -through [list [get_pins ads1292_filter/i_RSTN]]
set_false_path   -to [get_cells ads1292_filter/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells ads1292_filter/async_rst_synchronizer/o_RST_reg]
set_false_path   -to [list [get_cells                                                          \
ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg] [get_cells          \
ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg] [get_cells            \
ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg] [get_cells          \
ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg] [get_cells            \
ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg] [get_cells        \
ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg]]
set_false_path   -through [list [get_pins ads1292_filter/iir_lpf/i_RSTN]]
set_false_path   -to [get_cells ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins ads1292_filter/iir_hpf/i_RSTN]]
set_false_path   -to [get_cells ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins ads1292_filter/iir_notch/i_RSTN]]
set_false_path   -to [get_cells ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins ads1292_controller/i_RSTN] [get_pins                 \
ads1292_controller/spi_master/i_RSTN]]
set_false_path   -through [list [get_pins ads1292_controller/i_RSTN]]
set_false_path   -to [get_cells ads1292_controller/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells                                                                \
ads1292_controller/spi_master/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins ads1292_controller/spi_master/i_RSTN]]
set_false_path   -through [list [get_pins mpr121_controller/i_RSTN] [get_pins                  \
mpr121_controller/i2c_master/i_RSTN]]
set_false_path   -through [list [get_pins mpr121_controller/i_RSTN]]
set_false_path   -to [get_cells mpr121_controller/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells mpr121_controller/i2c_master/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins mpr121_controller/i2c_master/i_RSTN]]
set_input_delay -min -rise 0.663163  [get_ports ADS1292_DRDY]
set_input_delay -min -fall 0.703906  [get_ports ADS1292_DRDY]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports ADS1292_DRDY]
set_input_delay -min -rise 0.663387  [get_ports ADS1292_MISO]
set_input_delay -min -fall 0.704143  [get_ports ADS1292_MISO]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports ADS1292_MISO]
set_input_delay -clock clk  -max 4  [get_ports MPR121_SDA_IN]
set_input_delay -clock clk  -max 4  [get_ports MPR121_SCL_IN]
set_input_delay -min -rise 0.663071  [get_ports UART_RXD]
set_input_delay -min -fall 0.703811  [get_ports UART_RXD]
set_input_delay -clock clk  -max 4  -add_delay  [get_ports UART_RXD]
set_output_delay -clock clk  -max 4  [get_ports ADS1292_CSN]
set_output_delay -clock clk  -max 4  [get_ports ADS1292_START]
set_output_delay -clock clk  -max 4  [get_ports ADS1292_RESET]
set_output_delay -clock clk  -max 4  [get_ports ADS1292_MOSI]
set_output_delay -clock clk  -max 4  [get_ports ADS1292_SCLK]
set_output_delay -clock clk  -max 4  [get_ports MPR121_SDA_EN]
set_output_delay -clock clk  -max 4  [get_ports MPR121_SCL_EN]
set_output_delay -clock clk  -max 4  [get_ports MPR121_SDA_OUT]
set_output_delay -clock clk  -max 4  [get_ports MPR121_SCL_OUT]
set_output_delay -clock clk  -max 4  [get_ports UART_TXD]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_RSTN]
set_load 0  [get_nets w_CLOCK_HALF]
set_resistance 0  [get_nets w_CLOCK_HALF]
set_load 0  [get_nets divider_by_2/o_CLK_DIV_2]
set_resistance 0  [get_nets divider_by_2/o_CLK_DIV_2]
set_resistance 0  [get_nets async_rstn_glitch_synchronizer/async_rstn_synchronizer/i_CLK]
