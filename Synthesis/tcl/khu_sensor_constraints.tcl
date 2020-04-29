#******************************************************************************
# call khu_sensor_environment.tcl
#**********************************************i*******************************
source ./tcl/khu_sensor_environment.tcl
#******************************************************************************
#**                         Set Design Constraints                          **
#******************************************************************************
#******************************************************************************
# command
#
# Design rule constraints
# set_max_transition
# set_max_fanout
# set_max_capacitance
#
# Design optimization constraints
# create_clock
# set_clock_latency
# set_propagated_clock
# set_clock_uncertainty
# set_clock_transition
# set_input_delay
# set_output_delay
# set_max_area
#******************************************************************************
#set_fix_multiple_port_nets -all -buffer_constants 
## AREA ##
set_max_area 0

## CLOCK ##
create_clock -period 10.6 [get_ports CLK]
set_dont_touch_network [get_clocks CLK]

set_clock_uncertainty -setup 0.2 [get_clocks CLK]
set_clock_transition 0.1 [get_clocks CLK]

## INPUT DELAY ##
set_input_delay -max 4.24 -clock CLK [all_inputs]
# in considered input_pad constraint

remove_input_delay -clock CLK [all_inputs]
# remove clock input delay

## OUTPUT DELAY##
set_output_delay -max 4.24 -clock CLK [all_outputs]
# set output delay as 40% of clock period
# it considered output_pad constraint

## INPUT PORT TRANSITION ##
set_input_transition 0.8 [all_inputs]
#1.2ns
#set_driving_cell -lib_cell ivtd1_hd [all_inputs]
remove_driving_cell [get_ports CLK]

## MAX CAPACITANCE ##
set_max_capacitance 2.5 [all_designs]
# this command limits the amount of capacitance DC hang off.

## MAX TRANSITION and FANOUT ##
set_max_transition 1.3 [all_designs]
set_max_fanout 3 [all_designs]
