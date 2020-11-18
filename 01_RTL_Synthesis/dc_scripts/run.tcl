echo "------------------------------------------------------------------------"
echo "--                                                                    --"
echo "--                                                                    --"
echo "--                     khu_sensor compile start                       --"
echo "--                                                                    --"
echo "--                                                                    --"
echo "------------------------------------------------------------------------"
##########################################################################################
##
## Create Operating_Conditions
##
##########################################################################################
#########################   DO NOT CHANGE BELOW THIS LINE   ##############################
##########################################################################################
##
#####################################################################################################
##
#
# scenario naming convention :  mode_corner
# - mode   : func1,func2,scan1,scan2,bist1,bist2,jtag
#            funccts,scancts,bistcts,jtagcts
# - corner : wst, wstti, bst, bstti
#
# (scenario example)
#  func1_wst func1_wstti func1_bst func1_bstti
#  func2_wst func2_wstti func2_bst func2_bstti
#  scan1_wst scan1_wstti scan1_bst scan1_bstti
#  scan2_wst scan2_wstti scan2_bst scan2_bstti
#  bist1_wst bist1_wstti bist1_bst bist1_bstti
#  bist2_wst bist2_wstti bist2_bst bist2_bstti
#  jtag_wst  jtag_wstti  jtag_bst  jtag_bstti
#  funccts_wstti scancts_wstti bistcts_wstti jtagcts_wstti
#
#####################################################################################################

# MCMM : MultiCorner-MultiMode
####### Define operating conditions

## This is example, modify this according to your operating conditions.
##
## Generally, uses worst function mode scenario such as func1_wst.
## In other hands, you uses best corner scenarios such as func1_bst.
##
# However, the worst case is only applied in this project
# since the samsung013 bst library is damaged
# Revised(20.10.05): 
# Logic Synthesis & Pre-STA (1st Sign-off) 
# SS 1.05V 125c - WIRE Zero Wire Load Model

remove_design -all
# source the common_setup & Common variables file
source -echo -v ./dc_scripts/user_scripts/user_design_setup.tcl
source -echo -v ./dc_scripts/common_lib_setup.tcl

set_svf $SVF_DIR/$TOP_MODULE.svf

source ./dc_scripts/00_read_global_reset.tcl
source ./dc_scripts/01_read_designs.tcl

# Apply constraints
source ./dc_scripts/02_constraints.tcl

# Define Group Paths
set ports_clock_root [get_ports [all_fanout -flat -clock_tree -level 0]]
group_path -name REGOUT -to [all_outputs]
group_path -name REGIN -from [remove_from_collection [all_inputs] $ports_clock_root]
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_outputs]

source ./dc_scripts/03_compile_ultra.tcl
source ./dc_scripts/04_retime.tcl
source ./dc_scripts/05_gate_clock.tcl

source ./dc_scripts/06_design_finish.tcl
start_gui
#exit

