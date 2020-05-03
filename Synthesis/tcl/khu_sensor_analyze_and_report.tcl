#current_design $top

#check_design                                    >  ./log/check_design.log
#check_timing                                    >  ./log/mips.check_timing.log

#report_design                                   >  ./log/mips.report_design.log
#report_clock                                    >  ./log/mips.report_clock.log
#report_port                                     >  ./log/mips.report_port.log
#report_timing                                   >  ./log/mips.report_timing.log
#report_timing_requirements                      >  ./log/mips.report_timing_requirements
#report_constraint                               >  ./log/mips.report_constraint.log
#report_constraint -all_violators                >> ./log/mips.report_constraint.log


check_design                                    >  ./log/$top.check_design.log
check_timing                                    >  ./log/$top.check_timing.log

report_area					>  ./log/$top.report_area.log
report_design                                   >  ./log/$top.report_design.log
report_clock                                    >  ./log/$top.report_clock.log
report_port                                     >  ./log/$top.report_port.log
report_timing -delay max			 > ./log/$top.report_timing_max
report_timing -delay min                         > ./log/$top.report_timing_min
report_timing_requirements                      >  ./log/$top.report_timing_requirements
report_constraint                               >  ./log/$top.report_constraint.log
report_constraint -all_violators                >> ./log/$top.report_constraint.log
report_design_lib
report_lib std150e_typ_120_p025 		> ./log/lib_report.log
report_lib std150e_typ_120_p025_memory       > ./log/lib_report_mem.log
#check_timing


#change_names -rules verilog -hierarchy -verbose > ./log/change_names.v
#change_name -rule verilog -hier
