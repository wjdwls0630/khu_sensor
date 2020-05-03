#******************************************************************************
#**                      Define design environment                           **
#******************************************************************************
#******************************************************************************
# command
# set_operating_conditions
# set_wire_load_model
# set_drive
# set_driving_cell
# set_load
# set_fanout_load
# set_min_library
#******************************************************************************
# Reference/Front_End/Design_Compiler/DC User Guide.pdf p.185 Figure 7-1
# you must define the environment in which the design is expected to operate.
# You define the environment by specifying operating conditions, system interface characteristics,
# and wire load models (used only when Design Compiler is not operating in topographical mode).
# Operating conditions include temperature, voltage, and process variations.
# System interface characteristics include input drivers, input and output loads, and fanout loads.
# The environment model directly affects design synthesis results.
#******************************************************************************
#******************************************************************************
#**                 Optimizing With Multiple Libraries                       **
#******************************************************************************
# The set_min_library command for using multiple technology libraries directs
# Design Compiler to perform min and max delay analyses in one optimization(compile).

# -min (Best-case operating conditions, Optimistic wire load models, Minimum timing delays)
# -max (Worst-case operating conditions, Pessimistic wire load models, Maximum timing delays)

# the set_min_library command create a link between the data in the two libraries(best and worst).
# You also specify a max_library, but only max_library should be used for linking and as the target_library

# When Design Compiler compute a minimum delay value, it first analyzes the library cell
# in the max_library(target_library).
# If a library cell which is set by the set_min_library command exists, Design Compiler uses
# the timing information from the min_library, If not, it uses the cell in the max_library

# If the logic library contains operating condition specifications,
# you can use them as the default conditions.
# To specify explicit operating conditions that supersede the default library conditions,
# use the set_operating_conditions command.
# If you do not use the set_operating_conditions, Design Compiler use the default conditions.

# set_operating_conditions cannot be used the -min option without also using the -max option
#******************************************************************************
# In order to satisfy constraints of max and min,
# you should only specify worst case library to target_library, and set min library on Best case
#******************************************************************************

set_min_library $STD_BST.db
set_operating_conditions -max V105WTP1250 -min V135BTN0400
