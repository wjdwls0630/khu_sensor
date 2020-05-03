
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
#******************************************************************************
# Design Compiler has two types of constraints.
# One thing is design rule constraint which is the value defined by the technology library itself.
# Since circuit would not operate properly when the constraint is breached,
# It has high priority during synthesis.
# (If you do not define rules, Design Compiler would apply constraints defined
# by the technology library itself)
# Another thing is optimization constraints which are the set condition of speed and area
# during optimization.
#******************************************************************************
#******************************************************************************
#**                     Set Design Rule Constraints                          **
#******************************************************************************
# set_max_transition
# The maximum transition time(rise or fall time) for a RC(time constant) of net is the longest time
# for its driving pin to change logic values.
# The technology library already contains its maximum transition time, so that if
# you do not set maximum transition time, Design Compiler would compute implicit transition time
# from the technology library.
# To change or add to the implicit transition time from the technology library,
# use the set_max_transition command.

# The set_max_transition command sets maximum transition time
# ascribe to the specified value on clocks, ports, or designs.
# When you use the set_max_transition command, Design_Compiler attempts to ensure that the
# transition time for each net is less than the specified value, and meet the restrictive value.
# If the multiple libraries are applied, Design compiler will use the smallest maximum
# transition time globally across the design.
# In addtion, When the maximum transition attribute is set on a design or port and a clock group,
# when multiple clocks are on the sampe paths,
# the most restrictive constraint is used.

# If the transition time for a given driver is greater than the max_transition value,
# Design Compiler reports a design rule violation and works to correct the violation.

# To undo a set_max_transition command, use the remove attribute command.
# remove_attribute [get_designs ] max_transition
# To get attribute of max transition, use the get attribute command.
# get_attribute find(pin, "libA/AND2/i") max_transition
# To set max_transition of all pins belonging to the clock Group
# set_max_transition 5 [get_clocks Clk]
#******************************************************************************
# Command
# set_max_transition 1.3 [all_designs]
#******************************************************************************
# set_max_fanout
# The fanout restriction is the constraint how many outputs can be driven,
# the values are described on integer form which the technology library contains.
# The technology library already includes its maximum fanout load, so that if
# you do not set maximum fanout load, Design Compiler would compute implicit fanout
# constraints for every driving pin in designs from the technology library.

# When you specify a max_fanout attribute, and the library max_fanout constraint exists,
# Design Compiler attempts to meet more restrictive value.
# When you use the set_max_fanout command, Design_Compiler attempts to ensure that the
# fanout for each pin is less than the specified value, and meet the restrictive value.

# If the calculated fanout is greater than the max_fanout value,
# Design Compiler reports a design rule violation and attempts to correct the violation.

# To undo a set_max_fanout command, use the remove attribute command.
# remove_attribute port_name fanout_load
# To get attribute of max transition, use the get attribute command.
# get_attribute "libA/AND2/i" fanout_load
# To set max_transition
# set_max_fanout 8 [get_designs design_name]
#******************************************************************************
# Command
# set_max_fanout 3 [all_designs]
#******************************************************************************
# set_max_capacitance
# The set_max_capacitance command constrain capacitance independently.
# The set_max_capacitance command set a pin attribute that defines the maximum total
# capacitive load that an output pin can drive.
# Design Compiler computes the capacitance on a net by adding the wire capacitance of
# the pins attached to the net.
# Reference/Front_End/Design_Compiler/DC User Guide.pdf (p.220)
# The max_capacitance constraint operates akin to max_transition, but the cost
# is based on the total capacitance of the net, rather than the transition time.

# When you specify a max_capacitance attribute, and the library max_capacitance constraint exists,
# Design Compiler attempts to meet more restrictive value.
# When you use the max_capacitance command, Design_Compiler attempts to ensure that the
# max_capacitance for each pin is less than the specified value, and meet the restrictive value.

# If the calculated capacitance is greater than the max_capacitance value,
# Design Compiler reports a design rule violation and attempts to correct the violation.

# To annotate each driver pin with a frequency-based max_capacitance,
# set compile_enable_dyn_max_cap true
# To undo a set_max_transition command, use the remove attribute command.
# remove_attribute [get_designs ] max_capacitance
# To get attribute of max capacitance, use the get attribute command.
# get_attribute find(pin, "libA/AND2/i") max_capacitance
# To set max_capacitance
# set_max_capacitance 3 [get_designs adder]

# set_min_capacitance
# To set a minimum capacitance for nets attached to input or bidirectional ports,
# use the set_min_capacitance command.

# To set a minimum capacitance
# set_min_capacitance 12.0 port_name
# To undo a set_min_capacitance command, use the remove attribute command.
# remove_attribute port_name min_capacitance
#******************************************************************************
# Command
# set_max_capacitance 2.5 [all_designs]
#******************************************************************************
#******************************************************************************
#**                     Set Optimization Constraints                         **
#******************************************************************************
#******************************************************************************
# Design Compiler optimize speed first before optimizing area.
#******************************************************************************
# create_clock
create_clock : 클럭의 주파수를 정해주고
set_input_delay : 입력신호가 clock에 비해 얼마나 늦게 들어오는지를 알려 주기 위해
set_output_delay : 출력신호가 clock을 기준으로 외부에 얼마만큼의 지연이 추가로 있음을 알려 주기 위해(의미를 정확히 아셔야...클럭주기가 10ns일 때 output_delay를 3 ns로 하면 현재 block에서 clock edge기준으로 최소한 7ns 전에 신호가 나가야 한다는 뜻입니다.)
set_driving_cell : 입력신호에 대해 외부에서 어떤 cell이 drive하고 있는지 알려줌(얼마나 세게 driven되는 신호인지, 따라서 그 신호를 받아서 쓸 때 fan-out을 맞추기 위한 buffering을 어느 정도 해 줘야 하는지 알려줌)
set_load : 출력신호에 대해 외부에 얼마만큼의 load가 있는지 알려줌(따라서 얼마나 세게 drive해 줘야 하는지 알려줌)
asynchronous path 신호에 대해 지연값을 정해주기 위해서는 set_max_delay 와 set_min_delay 명령을 사용합니다. 이 max_delay와 min_delay는 또한 clock을 create_clock 을 사용하여 가상의 클럭을 기준으로 정해줄 수도 있습니다. set_fix_hold명령은 delay를 추가함으로써 hold time위반을 잡아줍니다.
max_area
optimization 도중에는 max_delay, min_delay, max_power, max_area에 대한 cost값이 최소가 되도록 회로가 여러번 수정되는 것입니다.(cost계산 방식은 생략)
# One thing is design rule constraint which is the value defined by the technology library itself.
# Since circuit would not operate properly when the constraint is breached,
# It has high priority during synthesis.
# (If you do not define rules, Design Compiler would apply constraints defined
# by the technology library itself)
# Another thing is optimization constraints which are the set condition of speed and area
# during optimization.
#******************************************************************************
1. Design Rule Constraints
Set_max_fanout :
dc_shell> get_attribute find(pin, "libA/AND2/i") fanout_load
와 같이 알아낼 수 있습니다.
set_max_transition :
set_max_capacitance :
예를 보면,
dc_shell> set_max_transition 5 test
dc_shell> set_max_fanout 5
dc_shell> set_max_capacitance 5
# Design
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

# this command limits the amount of capacitance DC hang off.

## MAX TRANSITION and FANOUT ##
# To fix the auto_wire_load selection
set auto_wire_load_selection true
