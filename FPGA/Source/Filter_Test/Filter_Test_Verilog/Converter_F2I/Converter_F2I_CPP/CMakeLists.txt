#=======================================================================================================================
# Define Converter_F2I target
#=======================================================================================================================


set(SOURCE_FILES_CONVERTER_F2I
        converter_f2i.cpp
        )
add_executable(converter_f2i ${SOURCE_FILES_CONVERTER_F2I})
target_link_libraries(converter_f2i)
target_include_directories(converter_f2i PUBLIC ${DATA_STRUCTURE})
set_target_properties(converter_f2i PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















