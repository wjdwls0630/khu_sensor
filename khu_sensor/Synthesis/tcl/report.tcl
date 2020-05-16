# This script file creates reports for all modules
echo "***********************************************************************"
echo "                           ${design}                                   "
echo "                           report.tcl                                  "
echo "                                                                       "
echo "***********************************************************************"
check_design -multiple_designs
check_design > "${log_path}${dir}${design}_check_design.log"
check_timing > "${log_path}${dir}${design}_check_timing.rpt"

report_area > "${log_path}${dir}${design}_report_area.rpt"
report_design > "${log_path}${dir}${design}_report_design.rpt"
report_clock > "${log_path}${dir}${design}_report_clock.rpt"
report_port -verbose > "${log_path}${dir}${design}_report_port.rpt"
report_cell > "${log_path}${dir}${design}_report_cell.rpt"
report_reference > "${log_path}${dir}${design}_report_reference.rpt"
report_net > "${log_path}${dir}${design}_report_net.rpt"
report_compile_options > "${log_path}${dir}${design}_report_compile_options.rpt"
report_constraint > "${log_path}${dir}${design}_report_constraints.rpt"
report_constraint -all_violators -verbose >> "${log_path}${dir}${design}_report_constraints.rpt"
report_timing -path end > "${log_path}${dir}${design}_report_timing.rpt"
report_timing -delay max >> "${log_path}${dir}${design}_report_timing.rpt"
report_timing -delay min  >> "${log_path}${dir}${design}_report_timing.rpt"
report_qor > "${log_path}${dir}${design}_report_QoR.rpt"
