#=======================================================================================================================
# Define All_Filters target
#=======================================================================================================================


set(SOURCE_FILES_ALL_FILTERS
        all_filters_test.cpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        ../../IIR_LPF/IIR_LPF_CPP/iir_lpf.hpp ../../IIR_LPF/IIR_LPF_CPP/iir_lpf.cpp
        ../../IIR_Notch/IIR_Notch_CPP/iir_notch.hpp ../../IIR_Notch/IIR_Notch_CPP/iir_notch.cpp
        ../../IIR_HPF/IIR_HPF_CPP/iir_hpf.hpp ../../IIR_HPF/IIR_HPF_CPP/iir_hpf.cpp
        )
add_executable(all_filters_test ${SOURCE_FILES_ALL_FILTERS})
target_link_libraries(all_filters_test)
target_include_directories(all_filters_test PUBLIC ${SOURCE_FILES_ALL_FILTERS})
set_target_properties(all_filters_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















