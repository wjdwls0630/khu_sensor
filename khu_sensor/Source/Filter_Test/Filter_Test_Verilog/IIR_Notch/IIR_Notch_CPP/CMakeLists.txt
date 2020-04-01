#=======================================================================================================================
# Define IIR_Notch target
#=======================================================================================================================


set(SOURCE_FILES_IIR_NOTCH
        notch_1.cpp
        iir_notch.cpp iir_notch.hpp
        ../../Signal/Signal_CPP/signal_generator.hpp ../../Signal/Signal_CPP/signal_generator.cpp
        )
add_executable(notch_1 ${SOURCE_FILES_IIR_NOTCH})
target_link_libraries(notch_1)
target_include_directories(notch_1 PUBLIC ${DATA_STRUCTURE})
set_target_properties(notch_1 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















