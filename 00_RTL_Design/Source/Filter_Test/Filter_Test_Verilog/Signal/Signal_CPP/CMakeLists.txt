#=======================================================================================================================
# Define Signal target
#=======================================================================================================================


set(SOURCE_FILES_SIGNAL
        signal_test.cpp
        signal.cpp signal.hpp
        )
add_executable(signal_test ${SOURCE_FILES_SIGNAL})
target_link_libraries(signal_test)
target_include_directories(signal_test PUBLIC ${DATA_STRUCTURE})
set_target_properties(signal_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
