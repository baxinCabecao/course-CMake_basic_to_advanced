
add_library(dealership STATIC dealership.cpp)

target_include_directories(dealership INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(dealership PUBLIC cars)

# https://cmake.org/cmake/help/latest/command/add_library.html#imported-libraries