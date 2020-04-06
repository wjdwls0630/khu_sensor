#=======================================================================================================================
# Define IIR_HPF target
#=======================================================================================================================


set(SOURCE_FILES_IIR_HPF
        hpf_1.cpp
        iir_hpf.cpp iir_hpf.hpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        )
add_executable(hpf_1 ${SOURCE_FILES_IIR_HPF})
target_link_libraries(hpf_1)
target_include_directories(hpf_1 PUBLIC ${DATA_STRUCTURE})
set_target_properties(hpf_1 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















