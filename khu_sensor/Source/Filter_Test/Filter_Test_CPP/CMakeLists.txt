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
set(CMAKE_EXE_LINKER_FLAGS "-Wl")

set(SOURCE_FILES
        main.cpp
        iir_lpf/iir_lpf.cpp iir_lpf/iir_lpf.hpp
        iir_notch/iir_notch.cpp iir_notch/iir_notch.hpp
        iir_hpf/iir_hpf.cpp iir_hpf/iir_hpf.hpp
        signal_generator/signal_generator.cpp signal_generator/signal_generator.hpp
        signal_generator/Data_Structure/AVLTree.hpp
        signal_generator/Data_Structure/BinaryIterator.hpp
        signal_generator/Data_Structure/BinaryNodeType.hpp
        signal_generator/Data_Structure/BinarySearchTree.hpp
        signal_generator/Data_Structure/BinaryTree.hpp
        signal_generator/Data_Structure/Comparer
        signal_generator/Data_Structure/DoublyIterator.hpp
        signal_generator/Data_Structure/DoublyNodeType.hpp
        signal_generator/Data_Structure/DoublySortedLinkedList.hpp
        )

set(CMKAE_VERBOSE_MAKEFILE ON)

set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
add_executable(main ${SOURCE_FILES})

target_link_libraries(main)