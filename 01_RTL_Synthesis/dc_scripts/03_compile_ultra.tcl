#******************************************************************************
#**                             03_compile_ultra                             **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                       03_compile_ultra.tcl                            "
echo "                                                                       "
echo "***********************************************************************"

# Set Step
set step "02_constraints"

compile_ultra -incremental

# Fix Violation
echo "***********************************************************************"
echo "                                                                       "
echo "                           fix violation                               "
echo "                                                                       "
echo "***********************************************************************"

if { $corner == "wst" } {
  change_link khu_sensor_top/sensor_core/U650 $STD_WST/ivd8_hd
  insert_buffer [get_pins khu_sensor_top/sensor_core/U650/A] $STD_WST/nid8_hd -no_of_cells 2
  change_link khu_sensor_top/uart_controller/U171 $STD_WST/ivd4_hd
  insert_buffer [get_pins khu_sensor_top/uart_controller/uart_rx/U3/A] $STD_WST/nid4_hd -no_of_cells 2
}

set_dont_touch [get_cells khu_sensor_top/sensor_core/U650]
set_dont_touch [get_cells khu_sensor_top/sensor_core/eco_cell_1]
set_dont_touch [get_cells khu_sensor_top/sensor_core/eco_cell_2]

set_dont_touch [get_cells khu_sensor_top/uart_controller/U171]
set_dont_touch [get_cells khu_sensor_top/uart_controller/eco_cell_1]
set_dont_touch [get_cells khu_sensor_top/uart_controller/eco_cell_2]

source ./dc_scripts/common_reports.tcl

#compile_ultra -incremental -retime
