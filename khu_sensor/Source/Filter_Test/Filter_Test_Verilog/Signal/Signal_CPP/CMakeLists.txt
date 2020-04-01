#=======================================================================================================================
# Define Signal_Generator target
#=======================================================================================================================


set(SOURCE_FILES_SIGNAL
        signal_1.cpp
        signal_generator.cpp signal_generator.hpp
        )
add_executable(signal_1 ${SOURCE_FILES_SIGNAL})
target_link_libraries(signal_1)
target_include_directories(signal_1 PUBLIC ${DATA_STRUCTURE})
set_target_properties(signal_1 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















