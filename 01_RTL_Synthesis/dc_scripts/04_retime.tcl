#******************************************************************************
#**                                04_retime                                 **
#******************************************************************************
echo "***********************************************************************"
echo "                                                                       "
echo "                             04_retime.tcl                             "
echo "                                                                       "
echo "***********************************************************************"

# Set Step
set step "04_retime"

compile_ultra -incremental -retime

source ./dc_scripts/common_reports.tcl