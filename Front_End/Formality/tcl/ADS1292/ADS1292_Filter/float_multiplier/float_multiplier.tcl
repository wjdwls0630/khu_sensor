# Script file for verifying float_adder
set design "float_multiplier"
set dir "ADS1292/ADS1292_Filter/float_multiplier/"

echo "***********************************************************************"
echo "                                                                       "
echo "                             ${design}.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

# The benfit svf file is that it allows the implementation tool to automatically
# proveide setup information to Formality.
# It helps Formality understand and process design changes caused by other tools
# that were used in the design flow.
# Formolity uses this information to assist compare point matching and correctly set up
# verification without your intervention. It eliminates the need to enter setup infromation
# manually, a task that is time consuming and error prone.
#
# read automated setup file where the retiming guidance commands are written
set_svf "${svf_path}${dir}${design}.svf"

# Design Requirement
# Design files must contain Verilog construrcts synthesizable by Synopsys HDL Compiler
# or Synopsys internal database foramt
#
# Design should not contain combinational feedback loops. -> cause problems in verification
# You must make the loops cut with the report_loops command and create_cutpoint_blackbox commands
# in Formality after verifying the design first and then proceed verification again
#
# Top-Level I/O ports, sequential components, and black-box components in both the ref design and imp
# l design must be aligned structurally. -> cause problems which is not correct verification if its
# compare points are not aligned structurally.
# For performing the correct equivalence matching, both the ref and impl design must have the same
# compare points
#
# For all missing designs that cannot be found during link command, you should make black-box model
# that define the directions of pins in those missing designs. Use udc2bb
# If your designs have complex datapath cells such as ALUs multipliers, make them as black-boxes and
# proceed verification. You should use event-driven simulation(vcs) to verify the sub-module that
# cotains complex datapath cells.

# All the names of module and library cell(designID) must be different case-insensitively in the same container.
# Though Formality operates cas-sensitively in verification, it operates case-insensitively in
# linking the design

# when you use black-box,
# exec $env(SEC_FM)/utils/udc2bb <udc file address> -f udc_filename.v
# read_verilog -technology_library -container <ref/impl> udc_filename.v

# Reading Designs
# Already set up in ./tcl/synopsys_fm_setup.tcl
# Before using Formality, you should set SEC_SYNOPSYS env(synopsys_fm_setup.tcl).
# SEC_SYNOPSYS is set to the path of the directory in which SEC Synopsys design-kit is installed.
# SEC_SYNOPSYS directory includes Synopsys library in db format, symbol db, and several
# useful utilities for Synopsys product including Formality.


# Create a container for the reference design(RTL)
# Read the reference design and set_top(link) it
create_container ref
read_verilog -container ref ${src_path}ADS1292/ADS1292_Filter/Float/${design}.v
# link command is obsolete, using set_top instead
#link ref:/WORK/$design
set_top ref:/WORK/$design

#After you set the top-levle design, you cannot change it
#whereas you can change the reference or implementation design to be verified
#with the set_reference_design or set_implementation_design

set_reference_design ref:/WORK/$design

# When you read designs in the Verilog structural netlist format into a container,
# use the -netlist option in read_verilog command. As a rule of thumb,  This option achieves
# approximately 5~10 times speed-up, compared to reading designs without -netlist option.

# Furthermore, Without the -netlist option, Formality ignores the characters after double underscore
# (__). This cause Formality not to link some module completely,
# -> remain as black-box. -> error occur

# Create a container for the implementation design(Gate-Level)
# Read the implementation design and set_top(link) it
create_container impl
#
read_verilog -container impl -netlist ${netlist_path}${dir}${design}.vg

#link impl:/WORK/$design
set_top impl:/WORK/$design

set_implementation_design impl:/WORK/$design

# Applying compare rules
# If you synthesize RTL designs with default Synopsys library(GTECH)
# and write implementation into Synopsys .ddc or .db format without proceeding change_names in DC
# you may not need any compare rules for verification
#
# However, we use SEC library, and SEC requires sec_verilog naming rule
# when writing gate-level netlist after synthesis using DC

# Generate the compare rules for post-synthesis verification
set_compare_rule impl:/WORK/$design                           \
                 -from {\(.*\)_reg\([0-9]*\)_\([0-9][0-9]*\)A} \
                 -to   {\1_reg\2[\3]}
# set_compare_point commands for mapping the comparable design objects changes
# their instance name or flattened hierarchy path name

echo "***********************************************************************"
echo "                                                                       "
echo "                            verify  ${design}                          "
echo "                                                                       "
echo "***********************************************************************"

# verification
# Since we have already linked the design pairs,
# use -nolink option when performing verification
# However, for now, -nolink is obsolete, it is default
if {[verify] != 1} {
   diagnose
   report_failing_points
   source "${tcl_path}report_fail.tcl"
} else {
   source "${tcl_path}report_pass.tcl"
}
source "${tcl_path}report_default.tcl"

# Try not to rely on signature analysis during first verification with Formality.
# In most cases, the compare rules that are introduced above are sufficient to match
# compare points between ref and imple design. Even if you do not know the naming scheme
# of your designs, you run verify command first without signature analysis.
# And you make sure you have any rules necessary to match all the compare points up.
# Sometimes you may need to use signature analysis, if the compare points follow no easy
# regex rule to make them match
#
# when verification fails, first do report_failing_points 0unmatched command and look for unmatched
# points in the ref and impl. You may need a naming rule to make some of the compare points match.
# If all the compare points are matched and the design verification still fails, try diagnosing
# a single failing compare point pair. It is easy to look for differences in sub-module logic cone
# if you cannot find a difference between ref and impl in top module logic cone flattened.
# Verify again the sub-module(not top-module) that contains faliling compare point since the name
# of failing compare point contains long hierarchical path and instance name, it is hard to find
# the name of module which contains failing compare point.
