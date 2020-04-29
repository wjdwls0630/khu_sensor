#=======================================================================================================================
# Define IIR_Notch target
#=======================================================================================================================


set(SOURCE_FILES_IIR_NOTCH
        notch_test.cpp
        iir_notch.cpp iir_notch.hpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        )
add_executable(notch_test ${SOURCE_FILES_IIR_NOTCH})
target_link_libraries(notch_test)
target_include_directories(notch_test PUBLIC ${DATA_STRUCTURE})
set_target_properties(notch_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
