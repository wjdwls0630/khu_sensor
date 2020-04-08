#=======================================================================================================================
# Define ADS1292_Signal target
#=======================================================================================================================


set(SOURCE_FILES_ADS1292_SIGNAL
        ads1292_signal_test.cpp
        ads1292_signal.cpp ads1292_signal.hpp
        ../../Signal/Signal_CPP/signal.hpp ../../Signal/Signal_CPP/signal.cpp
        )
add_executable(ads1292_signal_test ${SOURCE_FILES_ADS1292_SIGNAL})
target_link_libraries(ads1292_signal_test)
target_include_directories(ads1292_signal_test PUBLIC ${DATA_STRUCTURE})
set_target_properties(ads1292_signal_test PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})


















