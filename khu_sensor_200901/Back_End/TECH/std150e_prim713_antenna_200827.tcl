# Antenna TCL file for IC Compiler
# Jung Jin Park revision DATE : 2020.08.27
# Caution : Its content is equivalent to samsung 0.35um library. Thus, content may be wrong.
set lib [current_mw_lib]
remove_antenna_rules $lib

define_antenna_rule $lib -mode 1 -diode_mode 2 -metal_ratio 100 -cut_ratio 20
define_antenna_layer_rule $lib -mode 1 -layer "MET1" -ratio 100 -diode_ratio {0.203 0 400 3700}
define_antenna_layer_rule $lib -mode 1 -layer "MET2" -ratio 100 -diode_ratio {0.203 0 400 3700}
define_antenna_layer_rule $lib -mode 1 -layer "MET3" -ratio 100 -diode_ratio {0.203 0 400 3700}
define_antenna_layer_rule $lib -mode 1 -layer "MET4" -ratio 100 -diode_ratio {0.203 0 8000 50000}
define_antenna_layer_rule $lib -mode 1 -layer "VIA1" -ratio 5 -diode_ratio {0.203 0 83.33 75}
define_antenna_layer_rule $lib -mode 1 -layer "VIA2" -ratio 5 -diode_ratio {0.203 0 83.33 75}
define_antenna_layer_rule $lib -mode 1 -layer "VIA3" -ratio 5 -diode_ratio {0.203 0 83.33 75}
