#=======================================================================================================================
# Define Float_Adder target
#=======================================================================================================================


set(SOURCE_FILES_FLOAT_ADDER
        float_adder.cpp
        )
add_executable(float_adder ${SOURCE_FILES_FLOAT_ADDER})
target_link_libraries(float_adder)
target_include_directories(float_adder PUBLIC ${DATA_STRUCTURE})
set_target_properties(float_adder PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















