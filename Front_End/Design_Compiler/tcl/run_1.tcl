echo "------------------------------------------------------------------------"
echo "--                                                                    --"
echo "--                                                                    --"
echo "--                  khu_sensor re-compile start                       --"
echo "--                                                                    --"
echo "--                                                                    --"
echo "------------------------------------------------------------------------"
# Recompile all modules using write_script constraints
set t_w_path "wtcl/"
source "${tcl_path}compile_wtcl.tcl"
exit
