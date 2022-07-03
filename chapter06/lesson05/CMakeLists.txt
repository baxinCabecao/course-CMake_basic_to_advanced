cmake_minimum_required(VERSION 3.17)
project(Cars VERSION 1.0.0)

add_library(cars SHARED car.cpp)

# unecessary, just for learning
target_include_directories(cars PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
message(${CMAKE_CURRENT_SOURCE_DIR})
message($<TARGET_PROPERTY:cars,SOURCE_DIR>)


add_custom_target(genexdebug 
                COMMAND ${CMAKE_COMMAND} -E echo " Source $<TARGET_PROPERTY:cars,SOURCE_DIR> \
                                        Binary: $<TARGET_FILE:cars> \
                                        $<IF:0,true,false> \
                                        $<IF:$<BOOL:$<TARGET_NAME_IF_EXISTS:cars>>,true,false>")

set(PREFIX "${CMAKE_BINARY_DIR}/${PROJECT_NAME}")
install(TARGETS cars 
        DESTINATION $<IF:$<CONFIG:Debug>,${PREFIX}/debug,${PREFIX}/release>)

# only works with muilti config generators, like ninja
message("${CMAKE_CONFIGURATION_TYPES}")

# for single configuration tools like Make
message("Configured for: ${CMAKE_BUILD_TYPE}")

# https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html
# https://cmake.org/cmake/help/latest/variable/CMAKE_CONFIGURATION_TYPES.html
# https://cmake.org/cmake/help/latest/generator/Ninja%20Multi-Config.html
# https://cmake.org/cmake/help/latest/variable/CMAKE_LANG_FLAGS_CONFIG.html