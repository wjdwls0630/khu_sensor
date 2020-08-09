#call out liraries
set_app_var search_path "/Tools/Library/samsung013/sec050915_0050_STD150E_regular_DK_Synopsys_N/sec150e_synopsys/syn/STD150E"
set_app_var target_library "std150e_wst_105_p125.db"
set_app_var link_library "* $target_library"
set_min_library std150e_wst_105_p125.db -min_version std150e_typ_120_p025.db


#create milkyway environment
sh rm -r "./khu_sensor"
create_mw_lib -tech "./REF/techgen/std150e_prim_6m.tf" -mw_reference_library "./REF/Astro_PHA_lib/std150e_prim_050504 ./REF/Astro_PHA_lib/std150e_60poi_power_6lm_070420 ./REF/Astro_PHA_lib/std150e_60poi_io_6lm_071011" khu_sensor

#CELL : Physical layout
#FRAM : simple phyiscal layout, just provide info to Astro to do P&R
#LM Timing& Power info

open_mw_lib khu_sensor
report_mw_lib -mw_reference_library khu_sensor

set_tlu_plus_files -max_tluplus "./REF/TLU+/sec060328_0003_0.13um_L13G__InternalRule-set_PROC_Astro-TLUp_N/L13G/TLUP/L13_CELL_WST_6LM_DUMMY_V8.0_R_vari_Hole_Rev3.0.tlup" -min_tluplus "./REF/TLU+/sec060328_0003_0.13um_L13G__InternalRule-set_PROC_Astro-TLUp_N/L13G/TLUP/L13_CELL_TYP_6LM_DUMMY_V8.0_R_vari_Hole_Rev3.0.tlup" -tech2itf_map "./REF/TLU+/sec060328_0003_0.13um_L13G__InternalRule-set_PROC_Astro-TLUp_N/L13G/MAP/L13_CELL_6LM.map"

import_design "../Design_Compiler_wst_2_bst/netlist/khu_sensor_pad/wtcl/khu_sensor_pad_hierarchy.v" -format "verilog" -top "khu_sensor_pad" -cel  "khu_sensor_pad"
uniquify_fp_mw_cel

#link doesn't work, ex) vssoh_p is readable through std150e_power lib, but not able to through target .db library
#link

#allocate space for the chip and place the pins evenly on the border
create_floorplan -control_type "aspect_ratio" -core_aspect_ratio "1" -core_utilization "0.6" -row_core_ratio "1" -start_first_row -left_io2core 15 -bottom_io2core 15 -right_io2core  15 -top_io2core  15
#describe vdd and ground used by the standard cells
derive_pg_connection -power_net {vdd!} -ground_net {gnd!}
#create power rings around the edge
create_rectilinear_rings -nets {vdd! gnd!} -offset {1 1} -width {3 3} -space {3 3}

#create additional power network robustness but at the expense of routability later-not working , metal 3 not found
create_power_straps -direction vertical -num_placement_strap 1 -start_at 500 -increment_x_or_y 200 -nets {vdd! gnd!} -width 1.800 -layer MET3

#place all cells, available options "-effort high" and "-congestion" may help
place_opt -effort high -congestion

#connets the rows to the rings/straps
preroute_standard_cells -nets {vdd! gnd!} -connect horizontal -extend_to_boundaries_and_generate_pins


#insets the clock tree
clock_opt -fix_hold_all_clocks

#routes the rest of the design
route_opt -effort high

#after the route_opt report, you can to "Route_search_repair -rerun_drc -loop "100" " -not using for teset