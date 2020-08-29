#TODO make scenarios
#******************************************************************************
#                       Setting Up the TLUPlus Files                         **
#******************************************************************************

# TLUPlus is a binary table format that stores the RC coefficients.
# The TLUPlus models enable accurate RC extraction results by including the effects of width,
# space, density, and temperature on the resistance coefficients.

# If you specify the TLUPlus files before you open the Milkyway design library, IC Compiler
# performs consistency checks between the library files in the Milkyway design library and 
# the TLUPlus files, to ensure that you have a valid library setup; otherwise, you must manually
# perform this valdiation by running the "check_tlu_plus_files" command after defining the 
# TLUPlus settings

set tlu_path "TLU+/sec060328_0003_0.13um_L13G__InternalRule-set_PROC_Astro-TLUp_N/L13G/"
set tech2itf_map_file "MAP/L13_CELL_6LM.map"
set max_tluplus_file "TLUP/L13_CELL_WST_6LM_DUMMY_V8.0_R_vari_Hole_Rev3.0.tlup"
set min_tluplus_file "TLUP/L13_CELL_BST_6LM_DUMMY_V8.0_R_vari_Hole_Rev3.0.tlup"

set_tlu_plus_files \
-tech2itf_map "${ref_path}${tlu_path}${tech2itf_map_file}" \
-max_tluplus "${ref_path}${tlu_path}${max_tluplus_file}" \
-min_tluplus "${ref_path}${tlu_path}${min_tluplus_file}"

echo "***********************************************************************"
echo "                                                                       "
echo "    Check consistency between the Milkyway library and the TLUPlus     "   
echo "                                                                       "
echo "***********************************************************************"
#check_tlu_plus_files
