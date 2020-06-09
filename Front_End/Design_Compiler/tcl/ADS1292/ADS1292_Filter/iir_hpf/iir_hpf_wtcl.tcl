# Script file for constraining iir_hpf
set design "iir_hpf"
set dir "ADS1292/ADS1292_Filter/iir_hpf/"

echo "***********************************************************************"
echo "                                                                       "
echo "                        ${design}_wtcl.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

set_svf "${svf_path}${dir}${t_w_path}${design}.svf"

read_file -format verilog -netlist ${netlist_path}${dir}tcl/${design}.vg

current_design $design
echo "***********************************************************************"
echo "                                                                       "
echo "                          Apply ${design}.wtcl                         "
echo "                                                                       "
echo "***********************************************************************"
source "${tcl_path}${dir}${design}.wtcl"
remove_attribute [current_design] dont_touch
source "${tcl_path}default_constraints.tcl"

echo "***********************************************************************"
echo "                                                                       "
echo "                       compile_ultra ${design}                         "
echo "                                                                       "
echo "***********************************************************************"

optimize_registers
compile_ultra -no_autoungroup -retime -gate_clock -incremental

echo "***********************************************************************"
echo "                                                                       "
echo "                    write ${design} output file                        "
echo "                                                                       "
echo "***********************************************************************"

change_names -rules verilog -hierarchy -verbose
write_file -format verilog -output "${netlist_path}${dir}${t_w_path}${design}.vg"
write_sdf "${db_path}${dir}${t_w_path}${design}.sdf"
write_sdc "${db_path}${dir}${t_w_path}${design}.sdc"
write_parasitics -output "${db_path}${dir}${t_w_path}${design}_parasitics"
source "${tcl_path}report.tcl"
