echo "***********************************************************************"
echo "                                                                       "
echo "                        common_clock_env.tcl                           "
echo "                                                                       "
echo "***********************************************************************"

# CLOCK
#-------------------------------------------------------------------------------
# START_OF_USER_SPECIFICATION
# ------------------------------------------------------------------------------

set CLK_MAIN_PERIOD       8                       ;# Define the value as ns
set CLK_HALF_PERIOD  [expr {$CLK_MAIN_PERIOD*2}]   ;# Define the value as ns

# MTTV : Max Transition Time Violation
# The MTTV value will be referred to the Synopsys DK by default.
# The MTTV should be checked for the worst and best conditions both
# To guaranteen the full swing of clock signal, more pessimistic MTT value
# should be specified on the clock network
#
# Minimum Rule MTTV value should be 20% of clock period over 250Mhz clock,
# and 800ps under 250Mhz(4ns) design.
#
# In High speed IP, more aggressive rule should be applied. Some technical papers
# propose 10% transition time of clock period rule.
# Samsung 130nm default clock path max_transition 0.7ns
if { $CLK_MAIN_PERIOD >= 4 } {
  set CLOCK_MAX_TRAN    0.8; # clock path max transtion time.
} elseif { $CLK_MAIN_PERIOD >= 2 } {
  set CLOCK_MAX_TRAN    [expr $CLK_MAIN_PERIOD * 0.2] ;# clock path max transtion time.
} else {
  set CLOCK_MAX_TRAN    [expr $CLK_MAIN_PERIOD * 0.1] ;# clock path max transtion time.
}
####### Define setup/hold margin

set JITTER_MARGIN         "0.03"   ;# Define the value as %.
                                   ;# example) CS6 has 3% (0.03) for jitter margin.
                                   ;# If clock period is 5ns, margin is 150ps.
set USER_SETUP_MARGIN     "0.03"   ;# Define the value as %.
                                   ;# example) 0.01 means 1% of clock period.
                                   ;# If clock period is 5ns, margin is 50ps.
                                   ;# During implementation, this value is added in jitter margin.
                                   ;# Therefore, total margin will be 4% (200ps) in this example.
set USER_HOLD_MARGIN      "0.2"    ;# Define the value as ns.
                                   ;# example) 0.05 means 50ps margin.

set	FF_WST_HOLD_MARGIN		"0.240"
set FF_BST_HOLD_MARGIN		"0.090"

# Define max transition time
# Samsung 130nm default data path max_transition 1.5ns
set WST_MAX_TRAN        "0.9"    ;# library value is 2.250
set BST_MAX_TRAN        "0.7"    ;# library value is 1.131

####### Define max length
set MAX_LENGTH    "1200"            ;# value | none, define max length for signal

# Generate Clock
# If you are going to use the synthesis result with Zero-WLM style, more timing margin is 
# recommended.
# 1.2V Typical : 40% of clock cylce
# Shrink clock cycle time by 60%(40% is Zero-WLM margin)
# 40% margin = Zero-WLM effect + clock jitter + clock skew + OCV margin
create_clock -name clk -period [expr $CLK_MAIN_PERIOD * 0.6] [get_ports i_CLK]
create_generated_clock -name clk_half -divide_by 2 \
	-source [get_ports i_CLK] [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2]

# If real clock, set infinite drive strength
# Since we usually let the CTS procedure performed in the P&R
# the clock source driving capability is poor
# Thus we can set the clock tree as an ideal network without driving issue
#foreach_in_collection _clock [all_clocks] {
#  set_dont_touch_network [get_clocks $_clock]
#}
set_ideal_network [get_ports i_CLK]
set_ideal_network [get_pins khu_sensor_top/divider_by_2/o_CLK_DIV_2_reg/Q]
# CIC < 0.5ns as a rule of thumb.
foreach_in_collection _clock [all_clocks] {
  set_clock_transition -rise $CLOCK_MAX_TRAN [get_clocks $_clock]
  set_clock_transition -fall $CLOCK_MAX_TRAN [get_clocks $_clock]
  set_clock_latency 0.05 [get_clocks $_clock]
  set_clock_latency -source 0.7 [get_clocks $_clock]
}

####### Define setup/hold margin
###########################################################################
  # -----------------------------------------------------------------------
  # Apply additional setup/hold margin
  # -----------------------------------------------------------------------
  # If you are going to use the synthesis result with Zero-WLM style, more timing margin is 
  # recommended.
  # 1.2V Typical : 40% of clock cylce
  # Shrink clock cycle time by 60%(40% is Zero-WLM margin)
  # 40% margin = Zero-WLM effect + clock jitter + clock skew + OCV margin
  #
  # Hold Fixed margin is needed?
  # Cannot fully consider the hold time variation with OCV(On-Chip Variation) margin in STA
  # Random variation for delay arc (CLK->Q) is coverd by OCV margin
  # Hold fixed margin should be used to cover this variation for hold time.
  # actual input slopes of FF do not reach maximum slew rate almost case.

  set min_period 999999
  set clk_list [split $INTER_CLK_GROUPS " "]
  foreach clk $clk_list {
     if { $clk == "clk" } {
           set jitter_m [expr $CLK_MAIN_PERIOD * $JITTER_MARGIN ]
           set user_m   [expr $CLK_MAIN_PERIOD * $USER_SETUP_MARGIN ]
           set uncert [expr $jitter_m + $user_m ]
           if { $uncert > 2.0 } {
                set uncert 2.0
           }
           set_clock_uncertainty -setup $uncert $clk

   # Default hold margin
   set hold_m	[expr $USER_HOLD_MARGIN]
           set_clock_uncertainty -hold $hold_m $clk
           if { $CLK_MAIN_PERIOD < $min_period } {
                set min_period $CLK_MAIN_PERIOD
           }
     } else {

           set jitter_m [expr $CLK_HALF_PERIOD * $JITTER_MARGIN ]
           set user_m   [expr $CLK_HALF_PERIOD * $USER_SETUP_MARGIN ]
           set uncert [expr $jitter_m + $user_m ]
           if { $uncert > 2.0 } {
                set uncert 2.0
           }
           set_clock_uncertainty -setup $uncert $clk

   # Default hold margin
   set hold_m	[expr $USER_HOLD_MARGIN]
           set_clock_uncertainty -hold $hold_m $clk
           if { $CLK_HALF_PERIOD < $min_period } {
                set min_period $CLK_HALF_PERIOD
           }
}
  }
  # -----------------------------------------------------------------------
  # OCV margin and MTTV
  # -----------------------------------------------------------------------
  # When FF are connected by back-to-back, hold margin seems to be too pessimistic
  # In physical synthesis, library provide 9 hold values in terms of 3x3 table for pessimism 
  # removal ( Slope Aware Dynamic hold margin based on Monte Carlo Simulation)
  set corner $corner 

  if { [string match "*wst*" $corner] == 1 } {

    # Samsung 130nm default data path max_transition 1.5ns
    set_max_transition $WST_MAX_TRAN [current_design]

    ## CP F/F Fixed Hold Margin
    set FF [filter_collection [all_register] "ref_name =~ f*_hd"]
    if {[sizeof $FF] > 0} {
      foreach ff_cell [get_object_name $FF] {
               set_clock_uncertainty -hold $FF_WST_HOLD_MARGIN [get_pins -of $ff_cell -filter "pin_name =~ *CK* || pin_name =~ G*"]
      }
    }
  } elseif { [string match "*bst*" $corner] == 1 } {

    set_max_transition $BST_MAX_TRAN [current_design]

    ## CP F/F Fixed Hold Margin
    set FF [filter_collection [all_register] "ref_name =~ f*_hd"]
    if {[sizeof $FF] > 0} {
      foreach ff_cell [get_object_name $FF] {
               set_clock_uncertainty -hold $FF_BST_HOLD_MARGIN [get_pins -of $ff_cell -filter "pin_name =~ *CK* || pin_name =~ G*"]
      }
    }
  }

  ## Get clock information to apply additional margin
  set clock_info $REPORTS_DIR/report_clock.txt
  report_clock
  set rpt_clk_info [open $clock_info w]
  set rpt_clk_info [open $clock_info a]
  foreach_in_collection _clock [all_clocks] {
      set _period [get_attribute $_clock period]
      set _name   [get_attribute $_clock name]
      puts $rpt_clk_info "$_name $_period"
  }
  close $rpt_clk_info

