source "./tcl/synopsys_dc_sam013.setup.tcl"
source "${tcl_path}compile_init.tcl"


# Characterize and write_script for all modules
source "${tcl_path}characterize.tcl"

# Recompile all modules using write_script constraints
remove_design -all
source "${tcl_path}compile_wtcl.tcl"
