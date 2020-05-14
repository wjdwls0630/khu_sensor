# Characterize and write_script for all modules

echo "***********************************************************************"
echo "                                                                       "
echo "                        characterize.tcl                               "
echo "                                                                       "
echo "***********************************************************************"

# MPR121
current_design khu_sensor_top
current_design mpr121_controller
characterize -constraint i2c_master
current_design i2c_master
write_script > "${tcl_path}MPR121/i2c_master/i2c_master.wtcl"
current_design $top

current_design khu_sensor_top
characterize -constraint mpr121_controller
current_design mpr121_controller
write_script > "${tcl_path}MPR121/mpr121_controller/mpr121_controller.wtcl"
current_design $top

current_design $top
characterize -constraint khu_sensor_top
current_design khu_sensor_top
write_script > "${tcl_path}khu_sensor_pad/khu_sensor_top.wtcl"
current_design $top

# Error: Command 'write_script' cannot be performed within a hierarchy.
#Please re-issue the command in the design referenced by the current
#instance or the top-level of the current design. (UID-273)
#Error: Cannot have current_instance set for this command. (UID-279)
#0
