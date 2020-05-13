# This script file creates reports for all modules
echo "***********************************************************************"
echo "                           ${design}                                   "
echo "                           report.tcl                                  "
echo "***********************************************************************"
check_design > "${log_path}${dir}${t_w_path}${design}_check_design.rpt"
check_timing > "${log_path}${dir}${t_w_path}${design}_check_timing.rpt"

report_area > "${log_path}${dir}${t_w_path}${design}_report_area.rpt"
report_design > "${log_path}${dir}${t_w_path}${design}_report_design.rpt"
report_clock > "${log_path}${dir}${t_w_path}${design}_report_clock.rpt"
report_clock -skew > "${log_path}${dir}${t_w_path}${design}_report_clock.rpt"
report_port -verbose > "${log_path}${dir}${t_w_path}${design}_report_port.rpt"
report_cell > "${log_path}${dir}${t_w_path}${design}_report_cell.rpt"
report_reference > "${log_path}${dir}${t_w_path}${design}_report_reference.rpt"
report_resources > "${log_path}${dir}${t_w_path}${design}_report_resources.rpt"
report_net > "${log_path}${dir}${t_w_path}${design}_report_net.rpt"
report_attribute -design > "${log_path}${dir}${t_w_path}${design}_report_attribute.rpt"
report_compile_options > "${log_path}${dir}${t_w_path}${design}_report_compile_options.rpt"
report_constraint > "${log_path}${dir}${t_w_path}${design}_report_constraints.rpt"
report_constraint -all_violators -verbose >> "${log_path}${dir}${t_w_path}${design}_report_constraints.rpt"
report_timing > "${log_path}${dir}${t_w_path}${design}_report_timing.rpt"
report_timing -path full -input_pins > "${log_path}${dir}${t_w_path}${design}_report_timing_input_pin_path.rpt"
report_timing -max_path 5 > "${log_path}${dir}${t_w_path}${design}_report_timing_max_path.rpt"
report_timing -path end > "${log_path}${dir}${t_w_path}${design}_report_timing_path_end.rpt"
report_timing -delay max > "${log_path}${dir}${t_w_path}${design}_report_timing_delay_max.rpt"
report_timing -delay min > "${log_path}${dir}${t_w_path}${design}_report_timing_delay_min.rpt"
report_timing_requirements > "${log_path}${dir}${t_w_path}${design}_report_timing_requirements.rpt"
report_qor > "${log_path}${dir}${t_w_path}${design}_report_QoR.rpt"
report_power > "${log_path}${dir}${t_w_path}${design}_report_power.rpt"
