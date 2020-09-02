#******************************************************************************
#**                               04_reports                                 **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                           04_reports.tcl                              "
echo "                                                                       "
echo "***********************************************************************"

check_design > ${REPORTS_DIR}/${corner}/check_design.rpt
check_timing > ${REPORTS_DIR}/${corner}/check_timing.rpt

report_dont_touch > ${REPORTS_DIR}/${corner}/report_dont_touch.rpt
report_area > ${REPORTS_DIR}/${corner}/report_area.rpt
report_design > ${REPORTS_DIR}/${corner}/report_design.rpt
report_clock > ${REPORTS_DIR}/${corner}/report_clock.rpt
report_clock -skew >> ${REPORTS_DIR}/${corner}/report_clock.rpt
report_port -verbose > ${REPORTS_DIR}/${corner}/report_port.rpt
report_cell > ${REPORTS_DIR}/${corner}/report_cell.rpt
report_reference > ${REPORTS_DIR}/${corner}/report_reference.rpt
report_resources > ${REPORTS_DIR}/${corner}/report_resources.rpt
report_net > ${REPORTS_DIR}/${corner}/report_net.rpt
report_net -connection -verbose > ${REPORTS_DIR}/${corner}/report_net_connection.rpt
report_attribute -design > ${REPORTS_DIR}/${corner}/report_attribute.rpt
report_compile_options > ${REPORTS_DIR}/${corner}/report_compile_options.rpt
report_constraint > ${REPORTS_DIR}/${corner}/report_constraints.rpt
report_constraint -all_violators -verbose >> ${REPORTS_DIR}/${corner}/report_constraints.rpt
report_timing -path full -input_pins > ${REPORTS_DIR}/${corner}/report_timing_input_pin_path.rpt
report_timing -max_path 10 > ${REPORTS_DIR}/${corner}/report_timing_max_path.rpt
report_timing -path end > ${REPORTS_DIR}/${corner}/report_timing_path_end.rpt
report_timing -delay max > ${REPORTS_DIR}/${corner}/report_timing_delay_max.rpt
report_timing -delay min -nworst 10 > ${REPORTS_DIR}/${corner}/report_timing_delay_min.rpt
report_timing_requirements > ${REPORTS_DIR}/${corner}/report_timing_requirements.rpt
report_qor > ${REPORTS_DIR}/${corner}/report_QoR.rpt
report_power > ${REPORTS_DIR}/${corner}/report_power.rpt
