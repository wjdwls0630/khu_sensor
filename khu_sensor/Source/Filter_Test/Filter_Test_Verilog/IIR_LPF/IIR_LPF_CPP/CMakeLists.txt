#=======================================================================================================================
# Define IIR_LPF target
#=======================================================================================================================


set(SOURCE_FILES_IIR_LPF
        lpf_1.cpp
        iir_lpf.cpp iir_lpf.hpp
        ../../Signal/Signal_CPP/signal_generator.hpp ../../Signal/Signal_CPP/signal_generator.cpp
        )
add_executable(lpf_1 ${SOURCE_FILES_IIR_LPF})
target_link_libraries(lpf_1)
target_include_directories(lpf_1 PUBLIC ${DATA_STRUCTURE})
set_target_properties(lpf_1 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















