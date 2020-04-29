#******************************************************************************
# call khu_sensor_read_design.tcl
#**********************************************i*******************************
source ./tcl/khu_sensor_read_design.tcl
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
#******************************************************************************
# on Constraints -> 
# only specify worst case library to target_library, and set min library on Best case
# In order to satisfy constraints of max and min, circuit_designers usually use this kind of method.
#******************************************************************************
set_min_library $STD_BST.db 
set_operation_conditions -max slow -min fast 

