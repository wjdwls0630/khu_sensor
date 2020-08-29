###################################################################

# Created by write_sdc on Thu Aug 27 13:04:37 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions -max V105WTP1250 -max_library std150e_wst_105_p125.db:std150e_wst_105_p125\
                         -min V135BTN0400 -min_library std150e_bst_135_n040
set_max_area 1.6e+07
set_disable_timing [get_ports i_RSTN]
set_disable_timing [get_pins khu_sensor_top/i_RSTN]
set_disable_timing [get_pins pad17/Y]
set_disable_timing [get_pins khu_sensor_top/ads1292_controller/i_RSTN]
set_disable_timing [get_pins                                                   \
khu_sensor_top/ads1292_controller/spi_master/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/ads1292_filter/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/ads1292_filter/iir_hpf/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/ads1292_filter/iir_notch/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/ads1292_filter/iir_lpf/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/mpr121_controller/i_RSTN]
set_disable_timing [get_pins                                                   \
khu_sensor_top/mpr121_controller/i2c_master/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/sensor_core/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/uart_controller/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/uart_controller/uart_rx/i_RSTN]
set_disable_timing [get_pins khu_sensor_top/uart_controller/uart_tx/i_RSTN]
set_disable_timing [get_cells async_rstn_glitch_synchronizer]
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
set_load -pin_load 0 [get_ports i_CLK]
set_load -pin_load 0.01035 [get_ports CLK_OUT]
set_load -pin_load 0.01035 [get_ports UART_TXD]
set_load -pin_load 0.01035 [get_ports MPR121_SCL]
set_load -pin_load 0.01035 [get_ports MPR121_SDA]
set_load -pin_load 0.01035 [get_ports ADS1292_SCLK]
set_load -pin_load 0.01035 [get_ports ADS1292_MOSI]
set_load -pin_load 0.01035 [get_ports ADS1292_RESET]
set_load -pin_load 0.01035 [get_ports ADS1292_START]
set_load -pin_load 0.01035 [get_ports ADS1292_CSN]
set_load -min -pin_load 0 [get_ports i_CLK]
set_ideal_network [get_ports i_RSTN]
set_ideal_network [get_pins khu_sensor_top/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/ads1292_controller/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/ads1292_filter/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/mpr121_controller/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/sensor_core/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/uart_controller/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/uart_controller/uart_rx/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/uart_controller/uart_tx/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/mpr121_controller/i2c_master/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/ads1292_filter/iir_hpf/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/ads1292_filter/iir_notch/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/ads1292_filter/iir_lpf/i_RSTN]
set_ideal_network [get_pins khu_sensor_top/ads1292_controller/spi_master/i_RSTN]
create_clock [get_ports i_CLK]  -name clk  -period 10  -waveform {0 5}
set_clock_uncertainty 0.0804  [get_clocks clk]
set_clock_transition -max -rise 0.9 [get_clocks clk]
set_clock_transition -min -rise 0.9 [get_clocks clk]
set_clock_transition -max -fall 1.2 [get_clocks clk]
set_clock_transition -min -fall 1.2 [get_clocks clk]
create_generated_clock [get_pins pad29/YN]  -name clk_pad  -source [get_ports i_CLK]  -edges {1 2 3}
set_clock_uncertainty 0.0804  [get_clocks clk_pad]
set_clock_transition -max -rise 0.9 [get_clocks clk_pad]
set_clock_transition -min -rise 0.9 [get_clocks clk_pad]
set_clock_transition -max -fall 1.2 [get_clocks clk_pad]
set_clock_transition -min -fall 1.2 [get_clocks clk_pad]
create_generated_clock [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]  -name clk_half  -source [get_pins khu_sensor_top/divider_by_2/i_CLK]  -edges {1 3 5}
set_clock_latency 0.66  [get_clocks clk_half]
set_clock_uncertainty 0.0804  [get_clocks clk_half]
set_clock_transition -max -rise 0.9 [get_clocks clk_half]
set_clock_transition -min -rise 0.9 [get_clocks clk_half]
set_clock_transition -max -fall 1.2 [get_clocks clk_half]
set_clock_transition -min -fall 1.2 [get_clocks clk_half]
set_false_path   -from [get_pins pad17/Y]
set_false_path   -from [get_ports i_RSTN]
set_false_path   -to [get_cells                                                                \
async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins khu_sensor_top/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/async_rstn_glitch_synchronizer/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins khu_sensor_top/uart_controller/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/uart_controller/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells khu_sensor_top/uart_controller/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/uart_controller/uart_rx/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/uart_controller/uart_rx/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/uart_controller/uart_tx/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/uart_controller/uart_tx/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/sensor_core/i_RSTN]]
set_false_path   -to [get_cells khu_sensor_top/sensor_core/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/ads1292_filter/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells khu_sensor_top/ads1292_filter/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/ads1292_filter/iir_lpf/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/iir_lpf/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/iir_lpf/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/ads1292_filter/iir_hpf/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/iir_hpf/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/iir_hpf/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/ads1292_filter/iir_notch/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/iir_notch/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_filter/iir_notch/async_rst_synchronizer/o_RST_reg]
set_false_path   -through [list [get_pins khu_sensor_top/ads1292_controller/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_controller/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins khu_sensor_top/ads1292_controller/spi_master/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/ads1292_controller/spi_master/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins khu_sensor_top/mpr121_controller/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/mpr121_controller/async_rstn_synchronizer/o_RSTN_reg]
set_false_path   -through [list [get_pins khu_sensor_top/mpr121_controller/i2c_master/i_RSTN]]
set_false_path   -to [get_cells                                                                \
khu_sensor_top/mpr121_controller/i2c_master/async_rstn_synchronizer/o_RSTN_reg]
set_input_delay -clock clk  -max 1  [get_ports UART_RXD]
set_input_delay -clock clk  -max 1  [get_ports MPR121_SCL]
set_input_delay -clock clk  -max 1  [get_ports MPR121_SDA]
set_input_delay -clock clk  -max 1  [get_ports ADS1292_MISO]
set_input_delay -clock clk  -max 1  [get_ports ADS1292_DRDY]
set_output_delay -clock clk  -max 1  [get_ports MPR121_SCL]
set_output_delay -clock clk  -max 1  [get_ports MPR121_SDA]
set_output_delay -clock clk  -max 1  [get_ports CLK_OUT]
set_output_delay -clock clk  -max 1  [get_ports UART_TXD]
set_output_delay -clock clk  -max 1  [get_ports ADS1292_SCLK]
set_output_delay -clock clk  -max 1  [get_ports ADS1292_MOSI]
set_output_delay -clock clk  -max 1  [get_ports ADS1292_RESET]
set_output_delay -clock clk  -max 1  [get_ports ADS1292_START]
set_output_delay -clock clk  -max 1  [get_ports ADS1292_CSN]
set_load 0  [get_nets i_CLK]
set_resistance 0  [get_nets i_CLK]
set_load 0  [get_nets CLK_OUT]
set_resistance 0  [get_nets CLK_OUT]
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
set_load 0  [get_nets w_rstn_p]
set_resistance 0  [get_nets w_rstn_p]
set_load 0  [get_nets w_clk_p]
set_resistance 0  [get_nets w_clk_p]
set_load 0  [get_nets khu_sensor_top/w_CLOCK_HALF]
set_resistance 0  [get_nets khu_sensor_top/w_CLOCK_HALF]
