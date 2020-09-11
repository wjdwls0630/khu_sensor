###################################################################

# Created by write_sdc on Sat Sep 12 01:22:53 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_max_area 0
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/ads1292_filter/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/sensor_core/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/uart_controller/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/uart_controller/async_rst_synchronizer]
set_disable_timing [get_cells khu_sensor_top/async_rstn_glitch_synchronizer]
set_disable_timing [get_cells                                                  \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer]
set_disable_timing [get_cells                                                  \
async_rstn_glitch_synchronizer/async_rstn_synchronizer]
set_load -pin_load 0.01035 [get_ports UART_TXD]
set_load -pin_load 0.01035 [get_ports MPR121_SCL]
set_load -pin_load 0.01035 [get_ports MPR121_SDA]
set_load -pin_load 0.01035 [get_ports ADS1292_SCLK]
set_load -pin_load 0.01035 [get_ports ADS1292_MOSI]
set_load -pin_load 0.01035 [get_ports ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports ADS1292_START]
set_load -pin_load 0.01035 [get_ports ADS1292_CSN]
set_ideal_network [get_ports i_CLK]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2_reg/Q]
set_ideal_network [get_pins khu_sensor_top/uart_controller/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins khu_sensor_top/uart_controller/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins khu_sensor_top/sensor_core/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins khu_sensor_top/ads1292_filter/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins khu_sensor_top/ads1292_filter/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg/Q]
set_ideal_network [get_pins                                                                     \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer/o_RSTN_reg/Q]
create_clock [get_ports i_CLK]  -name clk  -period 12  -waveform {0 6}
set_clock_latency 0.05  [get_clocks clk]
set_clock_latency -source 0.7  [get_clocks clk]
set_clock_uncertainty -setup 2.2  [get_clocks clk]
set_clock_transition -max -rise 0.7 [get_clocks clk]
set_clock_transition -min -fall 0.7 [get_clocks clk]
set_clock_transition -max -fall 0.7 [get_clocks clk]
set_clock_transition -min -rise 0.7 [get_clocks clk]
create_generated_clock [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]  -name clk_half  -source [get_ports i_CLK]  -divide_by 2
set_clock_latency 0.05  [get_clocks clk_half]
set_clock_latency -source 0.7  [get_clocks clk_half]
set_clock_uncertainty -setup 4.4  [get_clocks clk_half]
set_clock_transition -max -rise 0.7 [get_clocks clk_half]
set_clock_transition -min -fall 0.7 [get_clocks clk_half]
set_clock_transition -max -fall 0.7 [get_clocks clk_half]
set_clock_transition -min -rise 0.7 [get_clocks clk_half]
group_path -name FEEDTHROUGH  -from [list [get_ports i_RSTN] [get_ports UART_RXD] [get_ports MPR121_SCL]    \
[get_ports MPR121_SDA] [get_ports ADS1292_MISO] [get_ports ADS1292_DRDY]]  -to [list [get_ports UART_TXD] [get_ports MPR121_SCL] [get_ports MPR121_SDA]  \
[get_ports ADS1292_SCLK] [get_ports ADS1292_MOSI] [get_ports ADS1292_RESET]    \
[get_ports ADS1292_START] [get_ports ADS1292_CSN]]
group_path -name REGIN  -from [get_ports i_RSTN]
group_path -name REGIN  -from [list [get_ports UART_RXD] [get_ports MPR121_SCL] [get_ports            \
MPR121_SDA] [get_ports ADS1292_MISO] [get_ports ADS1292_DRDY]]
group_path -name REGOUT  -to [list [get_ports UART_TXD] [get_ports MPR121_SCL] [get_ports MPR121_SDA]  \
[get_ports ADS1292_SCLK] [get_ports ADS1292_MOSI] [get_ports ADS1292_RESET]    \
[get_ports ADS1292_START] [get_ports ADS1292_CSN]]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -from [get_pins                                                               \
async_rstn_glitch_synchronizer/async_rstn_synchronizer/r_ff_reg/CK]
set_false_path   -from [get_pins                                                               \
async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg/CK]
set_false_path   -to [get_pins                                                                 \
async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg/RN]
set_false_path   -to [get_pins                                                                 \
async_rstn_glitch_synchronizer/async_rstn_synchronizer/r_ff_reg/RN]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer/r_ff_reg/CK] \
[get_pins khu_sensor_top/uart_controller/async_rstn_synchronizer/r_ff_reg/CK]  \
[get_pins                                                                      \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer/r_ff_reg/CK]          \
[get_pins khu_sensor_top/ads1292_filter/async_rstn_synchronizer/r_ff_reg/CK]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer/r_ff_reg/CK]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg/CK] \
[get_pins                                                                      \
khu_sensor_top/uart_controller/async_rstn_synchronizer/o_RSTN_reg/CK]          \
[get_pins                                                                      \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer/o_RSTN_reg/CK]        \
[get_pins khu_sensor_top/ads1292_filter/async_rstn_synchronizer/o_RSTN_reg/CK] \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer/o_RSTN_reg/CK]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg/RN] \
[get_pins                                                                      \
khu_sensor_top/uart_controller/async_rstn_synchronizer/o_RSTN_reg/RN]          \
[get_pins                                                                      \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer/o_RSTN_reg/RN]        \
[get_pins khu_sensor_top/ads1292_filter/async_rstn_synchronizer/o_RSTN_reg/RN] \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer/o_RSTN_reg/RN]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer/r_ff_reg/RN] \
[get_pins khu_sensor_top/uart_controller/async_rstn_synchronizer/r_ff_reg/RN]  \
[get_pins                                                                      \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer/r_ff_reg/RN]          \
[get_pins khu_sensor_top/ads1292_filter/async_rstn_synchronizer/r_ff_reg/RN]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer/r_ff_reg/RN]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer/r_ff_reg/CK] \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer/r_ff_reg/CK]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer/r_ff_reg/CK]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer/r_ff_reg/CK]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer/r_ff_reg/CK]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer/o_RSTN_reg/CK] \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg/CK]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg/CK] \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg/CK]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer/o_RSTN_reg/CK]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer/o_RSTN_reg/RN] \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg/RN]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg/RN] \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg/RN]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer/o_RSTN_reg/RN]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer/r_ff_reg/RN] \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer/r_ff_reg/RN]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer/r_ff_reg/RN]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer/r_ff_reg/RN]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer/r_ff_reg/RN]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/uart_controller/async_rst_synchronizer/r_ff_reg/CK] [get_pins   \
khu_sensor_top/sensor_core/async_rst_synchronizer/r_ff_reg/CK] [get_pins       \
khu_sensor_top/ads1292_filter/async_rst_synchronizer/r_ff_reg/CK]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/uart_controller/async_rst_synchronizer/o_RST_reg/CK] [get_pins  \
khu_sensor_top/sensor_core/async_rst_synchronizer/o_RST_reg/CK] [get_pins      \
khu_sensor_top/ads1292_filter/async_rst_synchronizer/o_RST_reg/CK]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/uart_controller/async_rst_synchronizer/o_RST_reg/SN] [get_pins  \
khu_sensor_top/sensor_core/async_rst_synchronizer/o_RST_reg/SN] [get_pins      \
khu_sensor_top/ads1292_filter/async_rst_synchronizer/o_RST_reg/SN]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/uart_controller/async_rst_synchronizer/r_ff_reg/SN] [get_pins   \
khu_sensor_top/sensor_core/async_rst_synchronizer/r_ff_reg/SN] [get_pins       \
khu_sensor_top/ads1292_filter/async_rst_synchronizer/r_ff_reg/SN]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer/r_ff_reg/CK]     \
[get_pins                                                                      \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer/r_ff_reg/CK]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer/r_ff_reg/CK]      \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer/r_ff_reg/CK]    \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer/r_ff_reg/CK]]
set_false_path   -from [list [get_pins                                                         \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg/CK]    \
[get_pins                                                                      \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg/CK]    \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg/CK]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg/CK]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg/CK]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg/SN]    \
[get_pins                                                                      \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg/SN]    \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg/SN]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg/SN]   \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg/SN]]
set_false_path   -to [list [get_pins                                                           \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer/r_ff_reg/SN]     \
[get_pins                                                                      \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer/r_ff_reg/SN]     \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer/r_ff_reg/SN]      \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer/r_ff_reg/SN]    \
[get_pins                                                                      \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer/r_ff_reg/SN]]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/mpr121_controller/i2c_master/clk_gate_sda_o_reg_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/mpr121_controller/i2c_master/clk_gate_mode_stop_reg_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/mpr121_controller/i2c_master/clk_gate_delay_reg_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/mpr121_controller/i2c_master/clk_gate_data_out_reg_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/mpr121_controller/i2c_master/clk_gate_data_reg_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/mpr121_controller/clk_gate_r_i2c_reg_addr_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_i2f/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_i2f/clk_gate_value_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_i2f/clk_gate_z_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_i2f/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_i2f/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_b_s_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_b_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_z_m_reg_2/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_sum_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/add/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_a_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_guard_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_R_40_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_1/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_a_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_guard_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_R_41_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_lpf/mult_2/clk_gate_R_50_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_b_s_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_b_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_z_m_reg_2/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_sum_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_1/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_b_s_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_b_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_z_m_reg_2/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_sum_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/add_2/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_guard_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_R_42_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_1/clk_gate_R_51_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_a_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_guard_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_R_43_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_2/clk_gate_R_52_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_a_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_guard_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_z_s_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_notch/mult_3/clk_gate_R_53_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_a_s_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_b_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_z_m_reg_2/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_sum_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/add/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_z_m_reg_1/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_a_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_z_e_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_guard_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_b_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_R_45_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/iir_hpf/mult/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_f2i/clk_gate_o_Z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_f2i/clk_gate_z_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_f2i/clk_gate_a_m_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_filter/converter_f2i/clk_gate_a_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_controller/clk_gate_r_lstate_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_controller/clk_gate_o_ADS1292_REG_DATA_OUT_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_controller/clk_gate_r_ads_data_out_reg_0/ENCLK]
set_max_delay 0  -from [get_pins                                                               \
khu_sensor_top/ads1292_controller/clk_gate_o_ADS1292_DATA_OUT_reg_0/ENCLK]
set_input_delay -clock clk  -max 0.35  [get_ports UART_RXD]
set_input_delay -clock clk  -max 0.35  [get_ports MPR121_SCL]
set_input_delay -clock clk  -max 0.35  [get_ports MPR121_SDA]
set_input_delay -clock clk  -max 0.35  [get_ports ADS1292_MISO]
set_input_delay -clock clk  -max 0.35  [get_ports ADS1292_DRDY]
set_output_delay -clock clk  -max 0.5  [get_ports MPR121_SCL]
set_output_delay -clock clk  -max 0.5  [get_ports MPR121_SDA]
set_output_delay -clock clk  -max 0.5  [get_ports UART_TXD]
set_output_delay -clock clk  -max 0.5  [get_ports ADS1292_SCLK]
set_output_delay -clock clk  -max 0.5  [get_ports ADS1292_MOSI]
set_output_delay -clock clk  -max 0.5  [get_ports ADS1292_RESET]
set_output_delay -clock clk  -max 0.5  [get_ports ADS1292_START]
set_output_delay -clock clk  -max 0.5  [get_ports ADS1292_CSN]
set_input_transition -max 0.12  [get_ports UART_RXD]
set_input_transition -min 0.12  [get_ports UART_RXD]
set_input_transition -max 0.12  [get_ports MPR121_SCL]
set_input_transition -min 0.12  [get_ports MPR121_SCL]
set_input_transition -max 0.12  [get_ports MPR121_SDA]
set_input_transition -min 0.12  [get_ports MPR121_SDA]
set_input_transition -max 0.12  [get_ports ADS1292_MISO]
set_input_transition -min 0.12  [get_ports ADS1292_MISO]
set_input_transition -max 0.12  [get_ports ADS1292_DRDY]
set_input_transition -min 0.12  [get_ports ADS1292_DRDY]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_load 0  [get_nets i_RSTN]
set_resistance 0  [get_nets i_RSTN]
set_load 0  [get_nets UART_RXD]
set_resistance 0  [get_nets UART_RXD]
set_load 0  [get_nets UART_TXD]
set_resistance 0  [get_nets UART_TXD]
set_load 0  [get_nets MPR121_SCL]
set_resistance 0  [get_nets MPR121_SCL]
set_load 0  [get_nets MPR121_SDA]
set_resistance 0  [get_nets MPR121_SDA]
set_load 0  [get_nets ADS1292_SCLK]
set_resistance 0  [get_nets ADS1292_SCLK]
set_load 0  [get_nets ADS1292_MISO]
set_resistance 0  [get_nets ADS1292_MISO]
set_load 0  [get_nets ADS1292_MOSI]
set_resistance 0  [get_nets ADS1292_MOSI]
set_load 0  [get_nets ADS1292_DRDY]
set_resistance 0  [get_nets ADS1292_DRDY]
set_load 0  [get_nets ADS1292_RESET]
set_resistance 0  [get_nets ADS1292_RESET]
set_load 0  [get_nets ADS1292_START]
set_resistance 0  [get_nets ADS1292_START]
set_load 0  [get_nets ADS1292_CSN]
set_resistance 0  [get_nets ADS1292_CSN]
