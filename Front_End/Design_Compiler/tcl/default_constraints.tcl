echo "***********************************************************************"
echo "                                                                       "
echo "                     default_constraints.tcl                           "
echo "                                                                       "
echo "***********************************************************************"

# set_max_transition 1.3 [all_designs]
#set_max_fanout 6 [all_designs]
# set_max_capacitance 2.5 [all_designs]

# CLOCK
set clk_main_period 20
set clk_half_period [expr {$clk_main_period*2}]

# Define system clock period
# Create real clock if clock port is found
if { [sizeof_collection [get_ports i_CLK]] > 0 } {
  set clk_name clk
  if { $design == "sensor_core" } {
    create_clock -name $clk_name -period $clk_half_period [get_ports i_CLK]
  } elseif { $design == "uart_controller" } {
    create_clock -name $clk_name -period $clk_half_period [get_ports i_CLK]
  } else {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
  }
  set is_real_clk true
} else {
  # Create virtual clock if clock port is not found
  set clk_name "vclk"
  create_clock -period $clk_main_period -name vclk
  set is_real_clk false
}

# If real clock, set infinite drive strength
if { $is_real_clk == true } {
  # Since we usually let the CTS procedure performed in the P&R
  # the clock source driving capability is poor
  # Thus we can set the clock tree as an ideal network without driving issue
  set_drive 0 [get_ports i_CLK]
  set_load 0 [get_ports i_CLK]
  #set_max_fanout 1 [get_ports i_CLK]
  # do not re-buffer the clock network
  set_dont_touch_network [get_ports i_CLK]
}

if { [sizeof_collection [get_ports i_RSTN]] > 0 } {
  echo "constraints i_RSTN"
  #set_max_fanout 1 [get_ports i_RSTN]
  set_disable_timing [get_ports i_RSTN]
  set_ideal_network [get_ports i_RSTN]
  set_dont_touch_network [get_ports i_RSTN]
  set_false_path -from [get_ports i_RSTN]
} elseif { [sizeof_collection [get_ports i_RST]] > 0 } {
  echo "constraints i_RST"
  #set_max_fanout 1 [get_ports i_RST]
  set_disable_timing [get_ports i_RST]
  set_ideal_network [get_ports i_RST]
  set_dont_touch_network [get_ports i_RST]
  set_false_path -from [get_ports i_RST]
}

# default timing constraints for modules
# clock skew
# small ckt : 0.1ns large ckt : 0.3ns

#set_clock_uncertainty -setup 0.3 [get_clocks clk]

# latency is the propagation time from the actual clock origin to the clock definition point
# in the design
# This setting can be avoid if the design is without the clock generator
# small ckt : 1ns large ckt : 3ns
#set_clock_latency 3 [get_clocks clk]

# < 0.5ns CIC tester: 0.5ns
#set_clock_transition -max 0.5 [get_clocks clk]

# input transition
#set_input_transition -max 0.5 [all_inputs]


#set_input_delay -max 1.2 [all_inputs] -clock $clk_name
#set_output_delay -max 1.5 [all_outputs] -clock $clk_name

#set max_load [expr [load_of $STD_WST/ivd1_hd/A] * 5.0]
#set_load $max_load [all_outputs]


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

#set compie_keep_original_for_external_references true
