#CMaeke powered build system for data structures.
#Create by JungJin Park
#First draft is 24. 03. 2020


message("Using CMake version ${CMAKE_VERSION}")
message("Before 'project':")
message("  C: '${CMAKE_C_COMPILER}'")
message("  C++: '${CMAKE_CXX_COMPILER}'")
message("  Source: ${PROJECT_SOURCE_DIR}")
message("  Binary: ${PROJECT_BINARY_DIR}")
message("  Version: ${PROJECT_VERSION}")
message("  Version (alt): ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")
cmake_minimum_required(VERSION 3.0)

project(. CXX)
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 1)

set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS "-g -o -Wall -std=c++11 ")
set(CMAKE_EXE_LINKER_FLAGS "-W")

set(SOURCE_FILES
        main.cpp
        IIR/IIR_LPF/iir_lpf.cpp IIR/IIR_LPF/iir_lpf.hpp
        IIR/IIR_Notch/iir_notch.cpp IIR/IIR_Notch/iir_notch.hpp
        IIR/IIR_HPF/iir_hpf.cpp IIR/IIR_HPF/iir_hpf.hpp
        Signal_Generator/signal_generator.cpp Signal_Generator/signal_generator.hpp
        Data_Structure/Comparer
        Data_Structure/DoublyIterator.hpp
        Data_Structure/DoublyNodeType.hpp
        Data_Structure/DoublySortedLinkedList.hpp
        )

set(CMKAE_VERBOSE_MAKEFILE ON)

set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
add_executable(main ${SOURCE_FILES})

target_link_libraries(main)