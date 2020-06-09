echo "***********************************************************************"
echo "                                                                       "
echo "                     default_constraints.tcl                           "
echo "                                                                       "
echo "***********************************************************************"

#DRC
#set_max_transition 1.5 [all_designs]
#set_max_fanout 6 [all_designs]
#set_max_capacitance 0.8 [all_designs]

# CLOCK
set clk_main_period 10
set clk_half_period [expr {$clk_main_period*2}]
set clk_name clk

# Define system clock period
# Create real clock if clock port is found
if { [sizeof_collection [get_ports i_CLK]] > 0 } {
  set clk_name clk
  if { $design == "khu_sensor_pad" } {
    #set clk_main_period 17.5
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    set_dont_touch_network [get_clocks clk]
    
    create_generated_clock -name clk_pad -source [get_ports i_CLK] -multiply_by 1 [get_pins pad29/YN]
    set_dont_touch_network [get_clocks clk_pad]
    set_resistance 0 [get_nets w_clk_p]
    set_load 0 [get_nets w_clk_p]
    
    set_clock_uncertainty -setup 0.0804 [get_clocks clk_pad]
    set_clock_uncertainty -hold 0.0804 [get_clocks clk_pad]
    set_clock_transition -rise 1.4 [get_clocks clk_pad]
    set_clock_transition -fall 1.9 [get_clocks clk_pad]
    remove_input_delay [get_pins pad29/YN]

    create_generated_clock -name clk_half -source [get_pins khu_sensor_top/divider_by_2/i_CLK] \
    -divide_by 2 [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]
    set_dont_touch_network [get_clocks clk_half]
    set_clock_uncertainty -setup 0.0804 [get_clocks clk_half]
    set_clock_uncertainty -hold 0.0804 [get_clocks clk_half]
    set_clock_transition -rise 1.4 [get_clocks clk_half]
    set_clock_transition -fall 1.9 [get_clocks clk_half]
    remove_input_delay [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]

    echo "constraints w_rstn_p"
    set_resistance 0 [get_nets w_rstn_p]
    set_load 0 [get_nets w_rstn_p]
    set_disable_timing [get_pins pad17/Y]
    set_ideal_network [get_pins pad17/Y]
    set_dont_touch_network [get_pins pad17/Y]
    set_false_path -from [get_pins pad17/Y]

  } elseif { $design == "khu_sensor_top" } {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    set_dont_touch_network [get_clocks clk]
    
    create_generated_clock -name clk_half -source [get_pins divider_by_2/i_CLK] \
    -divide_by 2 [get_pins divider_by_2/o_CLK_DIV_2]
    set_dont_touch_network [get_clocks clk_half]
    
    set_resistance 0 [get_nets i_CLK]
    set_load 0 [get_nets i_CLK]
    set_dont_touch [get_nets i_CLK]
    
    set_resistance 0 [get_nets w_CLOCK_HALF]
    set_load 0 [get_nets w_CLOCK_HALF]
    set_dont_touch [get_nets w_CLOCK_HALF]
    
    set_clock_uncertainty -setup 0.0804 [get_clocks clk_half]
    set_clock_uncertainty -hold 0.0804 [get_clocks clk_half]
    set_clock_transition -rise 1.4 [get_clocks clk_half]
    set_clock_transition -fall 1.9 [get_clocks clk_half]
    
    remove_input_delay [get_pins divider_by_2/o_CLK_DIV_2]

  } elseif { $design == "divider_by_2" } {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    set_resistance 0 [get_nets i_CLK]
    set_load 0 [get_nets i_CLK]
    set_dont_touch [get_nets i_CLK]
    set_resistance 0 [get_nets o_CLK_DIV_2]
    set_load 0 [get_nets o_CLK_DIV_2]
    set_load -pin_load 0 [get_ports o_CLK_DIV_2]
    set_load -min -pin_load 0 [get_ports o_CLK_DIV_2]
    set_dont_touch [get_nets o_CLK_DIV_2]
    
  } else {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    set_dont_touch_network [get_clocks clk]
  }

  # If real clock, set infinite drive strength
  # Since we usually let the CTS procedure performed in the P&R
  # the clock source driving capability is poor
  # Thus we can set the clock tree as an ideal network without driving issue
  set_drive 0 [get_ports i_CLK]
  set_load 0 [get_ports i_CLK]
  set_load -pin_load 0 [get_ports i_CLK]
  set_load -min -pin_load 0 [get_ports i_CLK]
  #set_max_fanout 1 [get_ports i_CLK]
  # do not re-buffer the clock network
  #set_dont_touch_network [get_ports i_CLK]
  #set_dont_touch_network [get_clocks clk]
  # assume that we use programmable multi clock generator
  # AK8147DV2
  # if source clk is passed from pll which have +/- 80ps jitter,
  set_clock_uncertainty -setup 0.0804 [get_clocks clk]
  set_clock_uncertainty -hold 0.0804 [get_clocks clk]
  # CIC < 0.5ns as a rule of thumb.
  set_clock_transition -rise 1.4 [get_clocks clk]
  set_clock_transition -fall 1.9 [get_clocks clk]
 # set_input_transition -max 0.5 [all_inputs]
  remove_input_delay [get_ports i_CLK]
  # latency is the propagation time from the actual clock origin to the clock definition point
  # in the design
  # This setting can be avoid if the design is without the clock generator
  # small ckt : 1ns large ckt : 3ns
  #set_clock_latency 3 [get_clocks clk]
} else {
  # Create virtual clock if clock port is not found
  #set clk_name "vclk"
  #create_clock -period $clk_main_period -name vclk
}


if { [sizeof_collection [get_ports i_RSTN]] > 0 } {
  echo "constraints i_RST"
  set_max_fanout 1 [get_ports i_RSTN]
  set_drive 0 [get_ports i_RSTN]
  set_disable_timing [get_ports i_RSTN]
  set_ideal_network [get_ports i_RSTN]
  set_dont_touch_network [get_ports i_RSTN]
  set_false_path -from [get_ports i_RSTN]
} elseif { [sizeof_collection [get_ports i_RST]] > 0 } {
  echo "constraints i_RST"
  set_max_fanout 1 [get_ports i_RST]
  set_drive 0 [get_ports i_RST]
  set_disable_timing [get_ports i_RST]
  set_ideal_network [get_ports i_RST]
  set_dont_touch_network [get_ports i_RST]
  set_false_path -from [get_ports i_RST]
}

#set_input_delay -max 1.2 [all_inputs] -clock $clk_name
#set_output_delay -max 1.5 [all_outputs] -clock $clk_name

set max_load [expr [load_of $STD_WST/ivd1_hd/A] * 5.0]
set_load $max_load [all_outputs]


# Set operating conditions
set_min_library $STD_WST.db -min_version $STD_BST.db
set_operating_conditions -max V105WTP1250 -min V135BTN0400

# Turn on auto wire load selection
# (library must support this feature)
set auto_wire_load_selection true

# fix multiple port for feedthrough
set_fix_multiple_port_nets -all -buffer_constants

# area
set_max_area 0

# power
set_leakage_optimization true
set_dynamic_optimization true
