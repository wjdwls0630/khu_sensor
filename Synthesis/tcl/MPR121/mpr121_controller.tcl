# Script file for constraining mpr121_controller

set design "mpr121_controller"
set dir "MPR121/mpr121_controller"

current_design mpr121_controller
source "${script_path}defaults.con"


if {[shell_is_in_xg_mode]==0}{
  compile_ultra
  write -hier -o "${db_path}${dir}${design}.db"
} else {
  compile_ultra -gate_clock -spg -incremental
  write -format ddc -hier -o "${db_path}${dir}${design}.ddc"
}
source "${script_path}report.tcl"
