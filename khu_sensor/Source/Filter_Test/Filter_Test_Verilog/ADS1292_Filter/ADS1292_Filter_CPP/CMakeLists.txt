#=======================================================================================================================
# Define ADS1292_Filter target
#=======================================================================================================================


set(SOURCE_FILES_ADS1292_FILTER
        ads1292_filter_test.cpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        )

add_executable(ads1292_filter_1 ${SOURCE_FILES_ADS1292_FILTER})
target_link_libraries(ads1292_filter_1)
target_include_directories(ads1292_filter_1 PUBLIC)
set_target_properties(ads1292_filter_1 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















