#=======================================================================================================================
# Define Converter_I2F target
#=======================================================================================================================


set(SOURCE_FILES_CONVERTER_I2F
        converter_i2f.cpp
        )
add_executable(converter_i2f ${SOURCE_FILES_CONVERTER_I2F})
target_link_libraries(converter_i2f)
target_include_directories(converter_i2f PUBLIC ${DATA_STRUCTURE})
set_target_properties(converter_i2f PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















