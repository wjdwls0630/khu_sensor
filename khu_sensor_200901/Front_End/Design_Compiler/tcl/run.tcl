echo "------------------------------------------------------------------------"
echo "--                                                                    --"
echo "--                                                                    --"
echo "--                     khu_sensor compile start                       --"
echo "--                                                                    --"
echo "--                                                                    --"
echo "------------------------------------------------------------------------"
set t_w_path "tcl/"
source "${tcl_path}compile_init.tcl"


# Characterize and write_script for all modules
source "${tcl_path}characterize.tcl"
exit
# Recompile all modules using write_script constraints
set t_w_path "wtcl/"
source "${tcl_path}compile_wtcl.tcl"
exit
