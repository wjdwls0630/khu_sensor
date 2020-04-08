#=======================================================================================================================
# Define IIR_LPF target
#=======================================================================================================================


set(SOURCE_FILES_IIR_LPF
        lpf_test.cpp
        iir_lpf.cpp iir_lpf.hpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        )
add_executable(lpf_test ${SOURCE_FILES_IIR_LPF})
target_link_libraries(lpf_test)
target_include_directories(lpf_test PUBLIC ${DATA_STRUCTURE})
set_target_properties(lpf_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
