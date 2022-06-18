cmake_minimum_required(VERSION 3.17)
project(Cars VERSION 1.0.0)

add_library(cars SHARED car.cpp)

# unecessary, just for learning
target_include_directories(cars PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
# include_directories()

# unecessary, just for learning
target_link_libraries(cars PRIVATE stdc++)
# link_libraries()

target_compile_definitions(cars PRIVATE DEBUG)
# add_compile_definitions()

target_compile_options(cars PRIVATE -Wall)
# add_compile_options()

# unecessary, just for learning
target_link_directories(cars PRIVATE /usr/share)
# link_directories()

# Disable rpath, 
set(CMAKE_SKIP_RPATH TRUE)

# Get a property
get_property(OUTPUT_VARIABLE TARGET cars PROPERTY SOURCES)
message(${OUTPUT_VARIABLE})

# Get a property
get_property(OUTPUT_VARIABLE TARGET cars PROPERTY INCLUDE_DIRECTORIES)
message(${OUTPUT_VARIABLE})

# Set a property
set_property(TARGET cars APPEND PROPERTY INCLUDE_DIRECTORIES /usr/share)
get_property(OUTPUT_VARIABLE TARGET cars PROPERTY INCLUDE_DIRECTORIES)
message("${OUTPUT_VARIABLE}")

# command direct to target properties, but not have the APPEND
set_target_properties(cars PROPERTIES INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR})
get_target_property(OUTPUT_VARIABLE_TARGET cars INCLUDE_DIRECTORIES)
message("${OUTPUT_VARIABLE_TARGET}")

# Set a global property, usefull for create a global variable that can be changed
set_property(GLOBAL PROPERTY MY_VAR "Value 1")
get_property(OUTPUT_VARIABLE GLOBAL PROPERTY MY_VAR)
message(${OUTPUT_VARIABLE})

# https://cmake.org/cmake/help/latest/manual/cmake-properties.7.html
# https://cmake.org/cmake/help/latest/command/set_property.html
# https://cmake.org/cmake/help/latest/command/get_property.html