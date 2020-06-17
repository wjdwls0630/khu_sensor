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
#set clk_main_period 10
set clk_half_period [expr {$clk_main_period*2}]
set clk_name clk

# Define system clock period
# Create real clock if clock port is found
if { [sizeof_collection [get_ports i_CLK]] > 0 } {
  set clk_name clk
  if { $design == "khu_sensor_pad" } {
    #set clk_main_period 17.5
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    # -multiply_by 1
    create_generated_clock -name clk_pad -source [get_ports i_CLK] -edges {1 2 3} [get_pins pad29/YN]
    set_dont_touch_network [get_clocks clk_pad]
    set_resistance 0 [get_nets w_clk_p]
    set_load 0 [get_nets w_clk_p]

    set_clock_uncertainty -setup 0.0804 [get_clocks clk_pad]
    set_clock_uncertainty -hold 0.0804 [get_clocks clk_pad]
    set_clock_transition -rise 0.9 [get_clocks clk_pad]
    set_clock_transition -fall 1.2 [get_clocks clk_pad]
    # -divide_by 1
    create_generated_clock -name clk_half -source [get_pins khu_sensor_top/divider_by_2/i_CLK] \
    -edges {1 3 5} [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]
    set_dont_touch_network [get_clocks clk_half]
    set_clock_latency 0.66 [get_clocks clk_half]
    
    set_resistance 0 [get_nets khu_sensor_top/w_CLOCK_HALF]
    set_load 0 [get_nets khu_sensor_top/w_CLOCK_HALF]
    
    set_clock_uncertainty -setup 0.0804 [get_clocks clk_half]
    set_clock_uncertainty -hold 0.0804 [get_clocks clk_half]
    set_clock_transition -rise 0.9 [get_clocks clk_half]
    set_clock_transition -fall 1.2 [get_clocks clk_half]

    echo "constraints w_rstn_p"
    set_resistance 0 [get_nets w_rstn_p]
    set_load 0 [get_nets w_rstn_p]
    set_disable_timing [get_pins pad17/Y]
    set_dont_touch_network [get_pins pad17/Y]
    set_false_path -from [get_pins pad17/Y]

  } elseif { $design == "khu_sensor_top" } {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]

    create_generated_clock -name clk_half -source [get_pins divider_by_2/i_CLK] \
    -edges {1 3 5} [get_pins divider_by_2/o_CLK_DIV_2]
    set_dont_touch_network [get_clocks clk_half]
    set_clock_latency 0.66 [get_clocks clk_half]
    
    set_resistance 0 [get_nets w_CLOCK_HALF]
    set_load 0 [get_nets w_CLOCK_HALF]

    set_clock_uncertainty -setup 0.0804 [get_clocks clk_half]
    set_clock_uncertainty -hold 0.0804 [get_clocks clk_half]
    set_clock_transition -rise 0.9 [get_clocks clk_half]
    set_clock_transition -fall 1.2 [get_clocks clk_half]
  } elseif { $design == "sensor_core" || $design == "uart_rx" || $design == "uart_tx" \
	     || $design == "uart_controller"  } {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    set_clock_latency 0.66 [get_clocks clk]
  } elseif { $design == "divider_by_2" } {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
    set_resistance 0 [get_nets o_CLK_DIV_2]
    set_load 0 [get_nets o_CLK_DIV_2]
    set_load -pin_load 0 [get_ports o_CLK_DIV_2]
    set_load -min -pin_load 0 [get_ports o_CLK_DIV_2]

  } else {
    create_clock -name $clk_name -period $clk_main_period [get_ports i_CLK]
  }

  # If real clock, set infinite drive strength
  # Since we usually let the CTS procedure performed in the P&R
  # the clock source driving capability is poor
  # Thus we can set the clock tree as an ideal network without driving issue
  set_dont_touch_network [get_clocks clk]
  set_drive 0 [get_ports i_CLK]
  set_load 0 [get_ports i_CLK]
  set_load -pin_load 0 [get_ports i_CLK]
  set_load -min -pin_load 0 [get_ports i_CLK]
  set_resistance 0 [get_nets i_CLK]
  set_load 0 [get_nets i_CLK]
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
  set_clock_transition -rise 0.9 [get_clocks clk]
  set_clock_transition -fall 1.2 [get_clocks clk]
 # set_input_transition -max 0.5 [all_inputs]
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
  echo "constraints i_RSTN"
  remove_input_delay [get_ports i_RSTN]
  set_drive 0 [get_ports i_RSTN]
  set_resistance 0 [get_nets i_RSTN] 
  set_ideal_network [get_ports i_RSTN]
  set_dont_touch_network [get_ports i_RSTN]
  set_false_path -from [get_ports i_RSTN]
  set_disable_timing [get_ports i_RSTN]
} elseif { [sizeof_collection [get_ports i_RST]] > 0 } {
  echo "constraints i_RST"
  remove_input_delay [get_ports i_RST]
  set_drive 0 [get_ports i_RST]
  set_resistance 0 [get_nets i_RST] 
  set_disable_timing [get_ports i_RST]
  set_ideal_network [get_ports i_RST]
  set_dont_touch_network [get_ports i_RST]
  set_false_path -from [get_ports i_RST]
  set_disable_timing [get_ports i_RST]
}

# we don't know input/output delay precisely
# assume pessimistic value of delay
# 40% on chip 60% to external
set clk_40per [expr $clk_main_period*0.4]
set clk_10per [expr $clk_main_period*0.1]

if { $design == "khu_sensor_pad" } {
  set_input_delay -max $clk_10per [all_inputs] -clock $clk_name
  set_output_delay -max $clk_10per [all_outputs] -clock $clk_name
} else {
  set_input_delay -max $clk_40per [all_inputs] -clock $clk_name
  set_output_delay -max $clk_40per [all_outputs] -clock $clk_name
}

if { $design == "khu_sensor_pad" } {
    remove_input_delay [get_ports i_CLK]
    remove_input_delay [get_pins pad29/YN]
    remove_input_delay [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]
} elseif { $design == "khu_sensor_top" } {
    remove_input_delay [get_ports i_CLK]
    remove_input_delay [get_pins divider_by_2/o_CLK_DIV_2]
} elseif { $design == "sensor_core" || $design == "uart_rx" || $design == "uart_tx" \
	     || $design == "uart_controller"  } {
    remove_input_delay [get_ports i_CLK]
} elseif { $design == "divider_by_2" } {
    remove_input_delay [get_ports i_CLK]
} else {
    remove_input_delay [get_ports i_CLK]
}

if { [sizeof_collection [get_ports i_RSTN]] > 0 } {
  echo "remove i_RSTN input delay"
  remove_input_delay [get_ports i_RSTN]
} elseif { [sizeof_collection [get_ports i_RST]] > 0 } {
  echo "remove i_RST input delay"
  remove_input_delay [get_ports i_RST]
}



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
if { $t_w_path == "tcl/" } {
   set_leakage_optimization true
   set_dynamic_optimization true
} else {
   set_max_dynamic_power 0
   set_max_leakage_power 0
}

set power_cg_auto_identify true 
# power_cg_designware is not recommended because -gate_clock option will insert
# clock gate automatically in designware module
#set power_cg_designware true
set compile_clock_gating_through_hierarchy true
# These settings should be the default setting from Synopsys 
# With these flags set correctly, and the distributed reset synchronizers, the clock tree
# like task of building a buffered reset tree is eliminated
set enable_recovery_removal_arcs true
set timing_disable_recovery_removal_checks false

# for default synthesizing style on async reset 
set hdlin_ff_always_sync_set_reset false
