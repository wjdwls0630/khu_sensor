echo "***********************************************************************"
echo "                                                                       "
echo "                     default_constraints.tcl                           "
echo "                                                                       "
echo "***********************************************************************"

# set_max_transition 1.3 [all_designs]
# set_max_fanout 3 [all_designs]
# set_max_capacitance 2.5 [all_designs]

# CLOCK
set clk_main_period 20
set clk_half_period [expr {$clk_main_period*2}]

# Define system clock period
# Create real clock if clock port is found
if { [sizeof_collection [get_ports i_CLK]] > 0 } {
  set clk_name "clk"
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
  set_drive 0 [get_ports i_CLK]
  set_ideal_network [get_ports i_CLK]
}

# default timing constraints for modules
# clock delay
#set_clock_uncertainty -setup 0.2 [get_clocks $clk_name]
#set_clock_uncertainty -setup 0.45 $clk_name
#set_clock_transition 0.1 [get_clocks $clk_name]

# input transition
# set_input_transition 0.8 [all_inputs]

if { $design == "khu_sensor_pad" } {
  # input delay
  # By input_pad constraint
  set_input_delay -max 4.24 -clock $clk_name [all_inputs]
  #set_input_delay 1.2 [all_inputs] -clock $clk_name
  remove_input_delay -clock $clk_name [all_inputs]
  
  # output delay
  # By output_pad constraint
  set_output_delay -max 4.24 -clock $clk_name [all_outputs]
  #set_output_delay 1.5 [all_outputs] -clock $clk_name
  
  # Apply default drive strengths and typical loads # for I/O ports
  set_driving_cell -lib_cell ivtd1_hd [all_inputs]
  #set_load 1.0*get_attribute "$STD_WST/ivd1_hd/A" [all_outputs]
}

# Set operating conditions
set_min_library $STD_WST.db -min_version $STD_BST.db
set_operating_conditions -max V105WTP1250 -min V135BTN0400

# Turn on auto wire load selection
# (library must support this feature)
set auto_wire_load_selection true
# 
set_fix_multiple_port_nets -all -buffer_constants

# area
set_max_area 0

# power
set_dynamic_optimization true
