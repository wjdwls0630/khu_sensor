source "./tcl/synopsys_dc_setup.tcl"
echo "------------------------------------------------------------------------"
echo "--                                                                    --"
echo "--                                                                    --"
echo "--                     khu_sensor compile start                       --"
echo "--                                                                    --"
echo "--                                                                    --"
echo "------------------------------------------------------------------------"
#set t_w_path "tcl/"
#source "${tcl_path}compile_init.tcl"


# Characterize and write_script for all modules
#source "${tcl_path}characterize.tcl"

# Recompile all modules using write_script constraints
#remove_design -all
set t_w_path "wtcl/"
read_db $STD_BST.db
source "${tcl_path}compile_wtcl.tcl"
exit
