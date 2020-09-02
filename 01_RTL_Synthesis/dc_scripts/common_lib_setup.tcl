#******************************************************************************
#**                          common library settings                         **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                       common_lib_setup.tcl                            "
echo "                                                                       "
echo "***********************************************************************"
#******************************************************************************
#                       set basic parameter                                  **
#******************************************************************************
set designer "Man"
set company "KHU Room327"
# Define path directories for file locations
set ALIB_DIR "./alib"
set SVF_DIR "./svf"

#******************************************************************************
#**                         Set Library Parameter                            **
#******************************************************************************
setenv SEC_SYNOPSYS /Tools/Library/samsung013/sec050915_0050_STD150E_regular_DK_Synopsys_N/sec150e_synopsys
setenv SEC_SYNOPSYS_AUX env(SEC_SYNOPSYS)/aux
#******************************************************************************
#**                Set New Variable for 'search_path'                        **
#******************************************************************************
set dk_home [getenv SEC_SYNOPSYS]
set dk_home_aux [getenv SEC_SYNOPSYS_AUX]
#******************************************************************************
#**                Set 'search_path'                                         **
#******************************************************************************
set search_path [list . [format "%s%s"  $synopsys_root /libraries/syn] \
    [format "%s%s"  $dk_home /syn/STD150E] $dk_home_aux]

#******************************************************************************
#**                Set libraries                                             **
#******************************************************************************
# Reference/Front_End/samsung013/sec150e_synopsys/readme/SynopsysDKGuide.pdf p.14

# Typical (TT / 1.20V / 25 Celcius)
set STD_TYP std150e_typ_120_p025
set STD_TYP_MEM std150e_typ_120_p025_memory

# Worst (SS / 1.05V / 125 Celcius)
set STD_WST std150e_wst_105_p125

# Best (FF / 1.35V / -40 Celcius)
set STD_BST std150e_bst_135_n040

set target_library [concat \
        $STD_WST.db
       #$STD_TYP_MEM.db
]

# * : all designs which are in dc_shell 
set synthetic_library dw_foundation.sldb
set link_library [concat \
        {*} \
        $target_library \
	$STD_BST.db \
	$synthetic_library
]

set link_path $link_library

set symbol_library [list std150e_veri.sdb]
set_app_var alib_library_analysis_path $ALIB_DIR

set_host_options -max_cores $DC_NUM_CPUS

#******************************************************************************
#**                    Default Timing Environment Setting                   **
#******************************************************************************

set timing_enable_multiple_clocks_per_reg true
set timing_enable_non_sequential_checks true
set case_analysis_with_logic_constants true
set disable_auto_time_borrow false

#******************************************************************************

#******************************************************************************
#**                               ETC                                        **
#******************************************************************************

set sh_enable_page_mode false

setenv TMPDIR [sh pwd]/TMP
set back [sh date +%m%d_%H:%M:%S]

#******************************************************************************
