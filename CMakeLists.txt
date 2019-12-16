cmake_minimum_required(VERSION 3.15)
project(CompileTimeDifferentiation)

set(CMAKE_CXX_STANDARD 17)

# add_library(CompileTimeDifferentiation library.cpp library.h main.cpp)
add_executable (CompileTimeDifferentiation library.cpp library.h main.cpp common.h common.cpp)