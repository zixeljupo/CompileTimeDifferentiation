cmake_minimum_required(VERSION 3.15)
project(CompileTimeDifferentiation)

set(CMAKE_CXX_STANDARD 17)

# add_library(CompileTimeDifferentiation library.cpp library.h main.cpp)
add_executable (CompileTimeDifferentiation main.cpp common.h common.cpp differentiation.cpp differentiation.h binary_operations.cpp binary_operations.h cp_float.cpp cp_float.h)