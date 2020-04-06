#CMake powered build system.
#Create by JungJin Park
#First draft is 24. 03. 2020
cmake_minimum_required(VERSION 3.0)
#=======================================================================================================================
# Set project metadata
#=======================================================================================================================
project(Filter_Test_Verilog CXX)
set(PROJECT_VENDOR "JungJinPark")
set(PROJECT_CONTACT "wjdwls0630@khu.ac.kr")
set(PROJECT_URL "https://github.com/wjdwls0630/khu_sensor")
set(PROJECT_DESCRIPTION "khu_sensor with MPR121 and ADS1292")

set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 1)
#=======================================================================================================================
# Set Cmake
#=======================================================================================================================

# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.


# This module is used by the Makefile generator to determine the following variables:
# CMAKE_SYSTEM_NAME - on unix this is uname -s, for windows it is Windows
# CMAKE_SYSTEM_VERSION - on unix this is uname -r, for windows it is empty
# CMAKE_SYSTEM - ${CMAKE_SYSTEM}-${CMAKE_SYSTEM_VERSION}, for windows: ${CMAKE_SYSTEM}
#
#  Expected uname -s output:
#
# AIX                           AIX
# BSD/OS                        BSD/OS
# FreeBSD                       FreeBSD
# HP-UX                         HP-UX
# Linux                         Linux
# GNU/kFreeBSD                  GNU/kFreeBSD
# NetBSD                        NetBSD
# OpenBSD                       OpenBSD
# OFS/1 (Digital Unix)          OSF1
# SCO OpenServer 5              SCO_SV
# SCO UnixWare 7                UnixWare
# SCO UnixWare (pre release 7)  UNIX_SV
# SCO XENIX                     Xenix
# Solaris                       SunOS
# SunOS                         SunOS
# Tru64                         Tru64
# Ultrix                        ULTRIX
# cygwin                        CYGWIN_NT-5.1
# MacOSX                        Darwin


# find out on which system cmake runs
if(CMAKE_HOST_UNIX)
    find_program(CMAKE_UNAME uname /bin /usr/bin /usr/local/bin )
    if(CMAKE_UNAME)
        if(CMAKE_HOST_SYSTEM_NAME STREQUAL "AIX")
            exec_program(${CMAKE_UNAME} ARGS -v OUTPUT_VARIABLE _CMAKE_HOST_SYSTEM_MAJOR_VERSION)
            exec_program(${CMAKE_UNAME} ARGS -r OUTPUT_VARIABLE _CMAKE_HOST_SYSTEM_MINOR_VERSION)
            set(CMAKE_HOST_SYSTEM_VERSION "${_CMAKE_HOST_SYSTEM_MAJOR_VERSION}.${_CMAKE_HOST_SYSTEM_MINOR_VERSION}")
            unset(_CMAKE_HOST_SYSTEM_MAJOR_VERSION)
            unset(_CMAKE_HOST_SYSTEM_MINOR_VERSION)
        else()
            exec_program(${CMAKE_UNAME} ARGS -r OUTPUT_VARIABLE CMAKE_HOST_SYSTEM_VERSION)
        endif()
        if(CMAKE_HOST_SYSTEM_NAME MATCHES "Linux|CYGWIN.*|Darwin|^GNU$|Android")
            exec_program(${CMAKE_UNAME} ARGS -m OUTPUT_VARIABLE CMAKE_HOST_SYSTEM_PROCESSOR
                    RETURN_VALUE val)
            if(CMAKE_HOST_SYSTEM_NAME STREQUAL "Darwin" AND
                    CMAKE_HOST_SYSTEM_PROCESSOR STREQUAL "Power Macintosh")
                # OS X ppc 'uname -m' may report 'Power Macintosh' instead of 'powerpc'
                set(CMAKE_HOST_SYSTEM_PROCESSOR "powerpc")
            endif()
        elseif(CMAKE_HOST_SYSTEM_NAME MATCHES "OpenBSD")
            exec_program(arch ARGS -s OUTPUT_VARIABLE CMAKE_HOST_SYSTEM_PROCESSOR
                    RETURN_VALUE val)
        else()
            exec_program(${CMAKE_UNAME} ARGS -p OUTPUT_VARIABLE CMAKE_HOST_SYSTEM_PROCESSOR
                    RETURN_VALUE val)
            if("${val}" GREATER 0)
                exec_program(${CMAKE_UNAME} ARGS -m OUTPUT_VARIABLE CMAKE_HOST_SYSTEM_PROCESSOR
                        RETURN_VALUE val)
            endif()
        endif()
        # check the return of the last uname -m or -p
        if("${val}" GREATER 0)
            set(CMAKE_HOST_SYSTEM_PROCESSOR "unknown")
        endif()
        set(CMAKE_UNAME ${CMAKE_UNAME} CACHE INTERNAL "uname command")
        # processor may have double quote in the name, and that needs to be removed
        string(REPLACE "\"" "" CMAKE_HOST_SYSTEM_PROCESSOR "${CMAKE_HOST_SYSTEM_PROCESSOR}")
        string(REPLACE "/" "_" CMAKE_HOST_SYSTEM_PROCESSOR "${CMAKE_HOST_SYSTEM_PROCESSOR}")
    endif()
else()
    if(CMAKE_HOST_WIN32)
        if (DEFINED ENV{PROCESSOR_ARCHITEW6432})
            set (CMAKE_HOST_SYSTEM_PROCESSOR "$ENV{PROCESSOR_ARCHITEW6432}")
        else()
            set (CMAKE_HOST_SYSTEM_PROCESSOR "$ENV{PROCESSOR_ARCHITECTURE}")
        endif()
    endif()
endif()

# if a toolchain file is used, the user wants to cross compile.
# in this case read the toolchain file and keep the CMAKE_HOST_SYSTEM_*
# variables around so they can be used in CMakeLists.txt.
# In all other cases, the host and target platform are the same.
if(CMAKE_TOOLCHAIN_FILE)
    # at first try to load it as path relative to the directory from which cmake has been run
    include("${CMAKE_BINARY_DIR}/${CMAKE_TOOLCHAIN_FILE}" OPTIONAL RESULT_VARIABLE _INCLUDED_TOOLCHAIN_FILE)
    if(NOT _INCLUDED_TOOLCHAIN_FILE)
        # if the file isn't found there, check the default locations
        include("${CMAKE_TOOLCHAIN_FILE}" OPTIONAL RESULT_VARIABLE _INCLUDED_TOOLCHAIN_FILE)
    endif()

    if(_INCLUDED_TOOLCHAIN_FILE)
        set(CMAKE_TOOLCHAIN_FILE "${_INCLUDED_TOOLCHAIN_FILE}" CACHE FILEPATH "The CMake toolchain file" FORCE)
    else()
        message(FATAL_ERROR "Could not find toolchain file: ${CMAKE_TOOLCHAIN_FILE}")
        set(CMAKE_TOOLCHAIN_FILE "NOTFOUND" CACHE FILEPATH "The CMake toolchain file" FORCE)
    endif()
endif()


# if CMAKE_SYSTEM_NAME is here already set, either it comes from a toolchain file
# or it was set via -DCMAKE_SYSTEM_NAME=...
# if that's the case, assume we are crosscompiling
if(CMAKE_SYSTEM_NAME)
    if(NOT DEFINED CMAKE_CROSSCOMPILING)
        set(CMAKE_CROSSCOMPILING TRUE)
    endif()
    set(PRESET_CMAKE_SYSTEM_NAME TRUE)
elseif(CMAKE_VS_WINCE_VERSION)
    set(CMAKE_SYSTEM_NAME      "WindowsCE")
    set(CMAKE_SYSTEM_VERSION   "${CMAKE_VS_WINCE_VERSION}")
    set(CMAKE_SYSTEM_PROCESSOR "${MSVC_C_ARCHITECTURE_ID}")
    set(CMAKE_CROSSCOMPILING TRUE)
    set(PRESET_CMAKE_SYSTEM_NAME TRUE)
else()
    set(CMAKE_SYSTEM_NAME      "${CMAKE_HOST_SYSTEM_NAME}")
    if(NOT DEFINED CMAKE_SYSTEM_VERSION)
        set(CMAKE_SYSTEM_VERSION "${CMAKE_HOST_SYSTEM_VERSION}")
    endif()
    set(CMAKE_SYSTEM_PROCESSOR "${CMAKE_HOST_SYSTEM_PROCESSOR}")
    set(CMAKE_CROSSCOMPILING FALSE)
    set(PRESET_CMAKE_SYSTEM_NAME FALSE)
endif()

include(Platform/${CMAKE_SYSTEM_NAME}-Determine OPTIONAL)

macro(ADJUST_CMAKE_SYSTEM_VARIABLES _PREFIX)
    if(NOT ${_PREFIX}_NAME)
        set(${_PREFIX}_NAME "UnknownOS")
    endif()

    # fix for BSD/OS , remove the /
    if(${_PREFIX}_NAME MATCHES BSD.OS)
        set(${_PREFIX}_NAME BSDOS)
    endif()

    # fix for GNU/kFreeBSD, remove the GNU/
    if(${_PREFIX}_NAME MATCHES kFreeBSD)
        set(${_PREFIX}_NAME kFreeBSD)
    endif()

    # fix for CYGWIN which has windows version in it
    if(${_PREFIX}_NAME MATCHES CYGWIN)
        set(${_PREFIX}_NAME CYGWIN)
    endif()

    # set CMAKE_SYSTEM to the CMAKE_SYSTEM_NAME
    set(${_PREFIX}  ${${_PREFIX}_NAME})
    # if there is a CMAKE_SYSTEM_VERSION then add a -${CMAKE_SYSTEM_VERSION}
    if(${_PREFIX}_VERSION)
        set(${_PREFIX} ${${_PREFIX}}-${${_PREFIX}_VERSION})
    endif()

endmacro()

ADJUST_CMAKE_SYSTEM_VARIABLES(CMAKE_SYSTEM)
ADJUST_CMAKE_SYSTEM_VARIABLES(CMAKE_HOST_SYSTEM)

# this file is also executed from cpack, then we don't need to generate these files
# in this case there is no CMAKE_BINARY_DIR
if(CMAKE_BINARY_DIR)
    # write entry to the log file
    if(PRESET_CMAKE_SYSTEM_NAME)
        file(APPEND ${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeOutput.log
                "The target system is: ${CMAKE_SYSTEM_NAME} - ${CMAKE_SYSTEM_VERSION} - ${CMAKE_SYSTEM_PROCESSOR}\n")
        file(APPEND ${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeOutput.log
                "The host system is: ${CMAKE_HOST_SYSTEM_NAME} - ${CMAKE_HOST_SYSTEM_VERSION} - ${CMAKE_HOST_SYSTEM_PROCESSOR}\n")
    else()
        file(APPEND ${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeOutput.log
                "The system is: ${CMAKE_SYSTEM_NAME} - ${CMAKE_SYSTEM_VERSION} - ${CMAKE_SYSTEM_PROCESSOR}\n")
    endif()

    # if a toolchain file is used, it needs to be included in the configured file,
    # so settings done there are also available if they don't go in the cache and in try_compile()
    set(INCLUDE_CMAKE_TOOLCHAIN_FILE_IF_REQUIRED)
    if(CMAKE_TOOLCHAIN_FILE)
        set(INCLUDE_CMAKE_TOOLCHAIN_FILE_IF_REQUIRED "include(\"${CMAKE_TOOLCHAIN_FILE}\")")
    endif()
endif()

#=======================================================================================================================
# Set Compiler
#=======================================================================================================================
# Compilers:
# - CV_GCC - GNU compiler (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
# - CV_CLANG - Clang-compatible compiler (CMAKE_CXX_COMPILER_ID MATCHES "Clang" - Clang or AppleClang, see CMP0025)
# - CV_ICC - Intel compiler
# - MSVC - Microsoft Visual Compiler (CMake variable)
# - MINGW / CYGWIN / CMAKE_COMPILER_IS_MINGW / CMAKE_COMPILER_IS_CYGWIN (CMake original variables)
#
# CPU Platforms:
# - X86 / X86_64
# - ARM - ARM CPU, not defined for AArch64
# - AARCH64 - ARMv8+ (64-bit)
# - PPC64 / PPC64LE - PowerPC
# - MIPS
#
# OS:
# - WIN32 - Windows | MINGW
# - UNIX - Linux | MacOSX | ANDROID
# - ANDROID
# - IOS
# - APPLE - MacOSX | iOS
# ----------------------------------------------------------------------------

# do not use (CMake variables): CMAKE_CL_64

if(NOT DEFINED GCC AND CMAKE_CXX_COMPILER_ID MATCHES "GNU")
    set(GCC 1)
endif()
if(NOT DEFINED CCLANG AND CMAKE_CXX_COMPILER_ID MATCHES "Clang")  # Clang or AppleClang (see CMP0025)
    set(CLANG 1)
    set(CMAKE_COMPILER_IS_CLANGCXX 1)  # TODO next release: remove this
    set(CMAKE_COMPILER_IS_CLANGCC 1)   # TODO next release: remove this
endif()

function(access_CMAKE_COMPILER_IS_CLANGCXX)
    if(NOT SUPPRESS_DEPRECATIONS)
        message(WARNING "DEPRECATED: CMAKE_COMPILER_IS_CLANGCXX support is deprecated.
    Consider using:
    - GCC    # GCC
    - CLANG  # Clang or AppleClang (see CMP0025)
")
    endif()
endfunction()
variable_watch(CMAKE_COMPILER_IS_CLANGCXX access_CMAKE_COMPILER_IS_CLANGCXX)
variable_watch(CMAKE_COMPILER_IS_CLANGCC access_CMAKE_COMPILER_IS_CLANGCXX)


# ----------------------------------------------------------------------------
# Detect Intel ICC compiler
# ----------------------------------------------------------------------------
if(UNIX)
    if(__ICL)
        set(ICC   __ICL)
    elseif(__ICC)
        set(ICC   __ICC)
    elseif(__ECL)
        set(ICC   __ECL)
    elseif(__ECC)
        set(ICC   __ECC)
    elseif(__INTEL_COMPILER)
        set(ICC   __INTEL_COMPILER)
    elseif(CMAKE_C_COMPILER MATCHES "icc")
        set(ICC   icc_matches_c_compiler)
    endif()
endif()

if(MSVC AND CMAKE_C_COMPILER MATCHES "icc|icl")
    set(ICC   __INTEL_COMPILER_FOR_WINDOWS)
endif()

if(NOT DEFINED CMAKE_CXX_COMPILER_VERSION)
    message(WARNING "Compiler version is not defined: CMAKE_CXX_COMPILER_VERSION is not set")
endif()
if((NOT DEFINED CMAKE_SYSTEM_PROCESSOR OR CMAKE_SYSTEM_PROCESSOR STREQUAL ""))
    message(WARNING "CMAKE_SYSTEM_PROCESSOR is not defined. Perhaps CMake toolchain is broken")
endif()
if(NOT DEFINED CMAKE_SIZEOF_VOID_P)
    message(WARNING "CMAKE_SIZEOF_VOID_P is not defined. Perhaps CMake toolchain is broken")
endif()

message(STATUS "Detected processor: ${CMAKE_SYSTEM_PROCESSOR}")
if(OPENCV_SKIP_SYSTEM_PROCESSOR_DETECTION)
    # custom setup: required variables are passed through cache / CMake's command-line
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "amd64.*|x86_64.*|AMD64.*")
    set(X86_64 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "i686.*|i386.*|x86.*")
    set(X86 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64.*|AARCH64.*|arm64.*|ARM64.*)")
    set(AARCH64 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(arm.*|ARM.*)")
    set(ARM 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(powerpc|ppc)64le")
    set(PPC64LE 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(powerpc|ppc)64")
    set(PPC64 1)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(mips.*|MIPS.*)")
    set(MIPS 1)
else()
    if(NOT OPENCV_SUPPRESS_MESSAGE_UNRECOGNIZED_SYSTEM_PROCESSOR)
        message(WARNING "OpenCV: unrecognized target processor configuration")
    endif()
endif()

# Workaround for 32-bit operating systems on x86_64
if(CMAKE_SIZEOF_VOID_P EQUAL 4 AND X86_64
        AND NOT FORCE_X86_64  # deprecated (2019-12)
        AND NOT OPENCV_FORCE_X86_64
        )
    message(STATUS "sizeof(void) = 4 on 64 bit processor. Assume 32-bit compilation mode")
    if(X86_64)
        unset(X86_64)
        set(X86 1)
    endif()
endif()
# Workaround for 32-bit operating systems on aarch64 processor
if(CMAKE_SIZEOF_VOID_P EQUAL 4 AND AARCH64
        AND NOT OPENCV_FORCE_AARCH64
        )
    message(STATUS "sizeof(void) = 4 on 64 bit processor. Assume 32-bit compilation mode")
    if(AARCH64)
        unset(AARCH64)
        set(ARM 1)
    endif()
endif()


# Fix handling of duplicated files in the same static library:
if(CMAKE_VERSION VERSION_LESS "3.0")
    foreach(var CMAKE_C_ARCHIVE_APPEND CMAKE_CXX_ARCHIVE_APPEND)
        if(${var} MATCHES "^<CMAKE_AR> r")
            string(REPLACE "<CMAKE_AR> r" "<CMAKE_AR> q" ${var} "${${var}}")
        endif()
    endforeach()
endif()

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMKAE_VERBOSE_MAKEFILE ON)
set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
set(CMAKE_CXX_EXTENSIONS OFF) # use -std=c++11 instead of -std=gnu++11
if(CMAKE_CXX11_COMPILE_FEATURES)
    set(HAVE_CXX11 ON)
endif()


if(NOT SKIP_CMAKE_CXX_STANDARD)

endif()
if(HAVE_STD_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -o -Wall")
    set(HAVE_CXX11 ON)
endif()

if(NOT HAVE_CXX11)
    message(FATAL_ERROR "This Project requires C++11")
endif()

#=======================================================================================================================
# Setting Message
#=======================================================================================================================
message("Using CMake version ${CMAKE_VERSION}")
message("Before 'project':")
message("  C: '${CMAKE_C_COMPILER}'")
message("  C++: '${CMAKE_CXX_COMPILER}'")
message("  Source: ${PROJECT_SOURCE_DIR}")
message("  Binary: ${PROJECT_BINARY_DIR}")
message("  Version: ${PROJECT_VERSION}")
message("  Version (alt): ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

#=======================================================================================================================
# Build Option
#=======================================================================================================================
option(BUILD_SIGNAL "Build Signal" ON)
option(BUILD_IIR_LPF "Build IIR_LPF" ON)
option(BUILD_IIR_NOTCH "Build IIR_Notch" ON)
option(BUILD_IIR_HPF "Build IIR_HPF" ON)
option(BUILD_CONVERTER_F2I "Build Converter_F2I" ON)
option(BUILD_CONVERTER_I2F "Build Converter_I2F" ON)
option(BUILD_FLOAT_ADDER "Build Float_Adder" ON)
option(BUILD_FLOAT_MULTIPLIER "Build Float_Multiplier" ON)

#=======================================================================================================================
# Add project subdirectories
#=======================================================================================================================

if(${BUILD_SIGNAL_GENERATOR})
    add_subdirectory(Signal/Signal_CPP)
endif()

if(${BUILD_IIR_LPF})
    add_subdirectory(IIR_LPF/IIR_LPF_CPP)
endif()

if(${BUILD_IIR_NOTCH})
    add_subdirectory(IIR_Notch/IIR_Notch_CPP)
endif()

if(${BUILD_IIR_HPF})
    add_subdirectory(IIR_HPF/IIR_HPF_CPP)
endif()

if(${BUILD_CONVERTER_F2I})
    add_subdirectory(Converter_F2I/Converter_F2I_CPP)
endif()

if(${BUILD_CONVERTER_I2F})
    add_subdirectory(Converter_I2F/Converter_I2F_CPP)
endif()

if(${BUILD_FLOAT_ADDER})
    add_subdirectory(Float_Adder/Float_Adder_CPP)
endif()

if(${BUILD_FLOAT_MULTIPLIER})
    add_subdirectory(Float_Multiplier/Float_Multiplier_CPP)
endif()

#=======================================================================================================================
# Add Library_CPP
#=======================================================================================================================
set(DATA_STRUCTURE Library_CPP/Data_Structure_CPP)

#=======================================================================================================================
# Define main target
#=======================================================================================================================


set(SOURCE_FILES
        main.cpp
        ./Signal/Signal_CPP/signal.hpp ./Signal/Signal_CPP/signal.cpp
        ./IIR_LPF/IIR_LPF_CPP/iir_lpf.hpp ./IIR_LPF/IIR_LPF_CPP/iir_lpf.cpp
        ./IIR_Notch/IIR_Notch_CPP/iir_notch.hpp ./IIR_Notch/IIR_Notch_CPP/iir_notch.cpp
        ./IIR_HPF/IIR_HPF_CPP/iir_hpf.hpp ./IIR_HPF/IIR_HPF_CPP/iir_hpf.cpp
        )

add_executable(main ${SOURCE_FILES})
target_link_libraries(main)
target_include_directories(main PUBLIC)
set_target_properties(main PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})