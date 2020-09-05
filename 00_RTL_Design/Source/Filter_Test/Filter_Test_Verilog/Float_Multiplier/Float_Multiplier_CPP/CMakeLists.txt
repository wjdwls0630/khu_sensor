#=======================================================================================================================
# Define Float_Multiplier target
#=======================================================================================================================


set(SOURCE_FILES_FLOAT_MULTIPLIER
        float_multiplier.cpp
        )
add_executable(float_multiplier ${SOURCE_FILES_FLOAT_MULTIPLIER})
target_link_libraries(float_multiplier)
target_include_directories(float_multiplier PUBLIC ${DATA_STRUCTURE})
set_target_properties(float_multiplier PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















