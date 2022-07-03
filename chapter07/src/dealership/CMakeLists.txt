
add_library(dealership SHARED dealership.cpp)

target_include_directories(dealership INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
