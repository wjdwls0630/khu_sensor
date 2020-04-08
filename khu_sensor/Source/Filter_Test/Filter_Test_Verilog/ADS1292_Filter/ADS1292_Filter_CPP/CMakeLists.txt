#=======================================================================================================================
# Define ADS1292_Filter target
#=======================================================================================================================


set(SOURCE_FILES_ADS1292_FILTER
        ads1292_filter_test.cpp
        ./ads1292_filter.hpp ./ads1292_filter.cpp
        ../../ADS1292_Signal/ADS1292_Signal_CPP/ads1292_signal.hpp ../../ADS1292_Signal/ADS1292_Signal_CPP/ads1292_signal.cpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        ../../IIR_LPF/IIR_LPF_CPP/iir_lpf.hpp ../../IIR_LPF/IIR_LPF_CPP/iir_lpf.cpp
        ../../IIR_Notch/IIR_Notch_CPP/iir_notch.hpp ../../IIR_Notch/IIR_Notch_CPP/iir_notch.cpp
        ../../IIR_HPF/IIR_HPF_CPP/iir_hpf.hpp ../../IIR_HPF/IIR_HPF_CPP/iir_hpf.cpp
        )

add_executable(ads1292_filter_test ${SOURCE_FILES_ADS1292_FILTER})
target_link_libraries(ads1292_filter_test)
target_include_directories(ads1292_filter_test PUBLIC ${DATA_STRUCTURE})
set_target_properties(ads1292_filter_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















