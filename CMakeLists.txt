cmake_minimum_required(VERSION 3.10) 
set(CMAKE_C_COMPILER "C:/msys64/mingw64/bin/gcc.exe")
set(CMAKE_CXX_COMPILER "C:/msys64/mingw64/bin/g++.exe")
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(MainProject)    
option(BUILD_LAB1 "BUILD_LAB_1" OFF)



if(BUILD_LAB1)
    add_subdirectory(lab1)
endif()

