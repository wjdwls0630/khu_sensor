#******************************************************************************
#**                     Hierarchical Compile strategy                        **
#******************************************************************************
#******************************************************************************
#**            Resolving Multiple Instances of a Design Reference            **
#******************************************************************************
# In a hierarchical design, subdesigns are often referenced by more than one cell instance,
# that is, multiple references of the design can occur.
# There is three methods to resolve multiple instances.
#******************************************************************************
# The Uniquify Method
# The compile command includes uniquify process, so that you do not need to resolve
# multiple instances explicitly.
# However, You can manually force the tool to uniquify designs before compile
# by running the uniquify command.
# Compared with the compile-once-don’t-touch method, the uniquify method has
# the following disadvantages

# Requires more memory
# Takes longer to compile

# (Even if you force the tool to uniquify before compile, the tool automatically
# “re-uniquifies” the designs when compiling the design.
# You cannot turn off the uniquify process during compiling process.)
#******************************************************************************
# Compile-Once-Don’t-Touch Method
# This method uses the set_dont_touch command to preserve the compiled subdesign
# while the remaining designs are compiled.

# The compile-once-don’t-touch method has the following advantages
# Compiles the reference design one time
# Requires less memory than the uniquify method
# Takes less time to compile than the uniquify method

# The compile-once-don’t-touch method has the following disadvantages
# the characterization would not apply to all instances
# Objects that have the dont_touch attribute are not able to be ungrouped
# when compile_ultra or compile -ungroup_all command is executed.
#******************************************************************************
# Ungroup Method
# The ungroup method has the same effect as the uniquify method
# (it makes unique copies of the design),
# but in addition, it removes levels of hierarchy.
# This method uses the ungroup command to produce a flattened netlist.

# The ungroup method has the following advantages
# Provides the best synthesis results

# The ungroup method has the following disadvantages
# Requires more memory and takes longer to compile than the compile-once-don’t-touch method
# Removes the user-defined design hierarchy.
#******************************************************************************
#******************************************************************************
#**         Ungrouping Hierarchies Automatically During Optimization         **
#******************************************************************************
# The compile_ultra command automatically ungroups logical hierarchies.
# It removes hierarchical boundaries and allows Design Compiler
# to improve timing by reducing the levels of logic and to improve area by sharing logic.
# During compile_ultra process, Design Compiler performs the following types of automatic grouping:
#******************************************************************************
# Area-based automatic ungrouping
# The tool estimates the area for unmapped hierarchies and removes small subdesigns
# the goal is to improve area and timing quality of results.
# Because the tool performs automatic ungrouping at an early stage, it has a better optimization context.
# Additionally, datapath extraction is enabled across ungrouped hierarchies.
# These factors improve the timing and area quality of results.
#******************************************************************************
# Delay-based automatic ungrouping
# It ungroups hierarchies along the critical path and is used essentially for timing optimization.
#******************************************************************************
# QoR-based automatic ungrouping (compile_ultra -spg)
# Design Compiler Graphical ungroups additional hierarchies to improve QoR.
#******************************************************************************
#**                        The Uniquify Method                               **
#******************************************************************************

# COMPILE #
compile -boundary -only_design_rule
