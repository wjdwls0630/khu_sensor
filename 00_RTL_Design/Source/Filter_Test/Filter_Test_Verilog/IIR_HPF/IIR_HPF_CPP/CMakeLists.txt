#=======================================================================================================================
# Define IIR_HPF target
#=======================================================================================================================


set(SOURCE_FILES_IIR_HPF
        hpf_test.cpp
        iir_hpf.cpp iir_hpf.hpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        )
add_executable(hpf_test ${SOURCE_FILES_IIR_HPF})
target_link_libraries(hpf_test)
target_include_directories(hpf_test PUBLIC ${DATA_STRUCTURE})
set_target_properties(hpf_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
