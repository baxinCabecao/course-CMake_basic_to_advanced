cmake_minimum_required(VERSION 3.17)
project(XMLReader VERSION 1.0.0)

add_executable(${PROJECT_NAME} main.c)

include(FindPkgConfig REQUIRED)

# Requires libxml2-devel, use full name without .so
pkg_check_modules(XML2 libxml-2.0 REQUIRED)

message(${XML2_INCLUDE_DIRS})
message(${XML2_LIBRARIES})
message(${XML2_LINK_LIBRARIES})
message(${XML2_CFLAGS})

target_link_libraries(${PROJECT_NAME} PUBLIC ${XML2_LINK_LIBRARIES})
target_include_directories(${PROJECT_NAME} PUBLIC ${XML2_INCLUDE_DIRS})

# https://cmake.org/cmake/help/latest/module/FindPkgConfig.html