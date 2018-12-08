# cmake_minimum_required(VERSION <specify CMake version here>)
project(fmcgct)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(fmcgct
        fmcgct.cpp
        fmcgct.hpp)
