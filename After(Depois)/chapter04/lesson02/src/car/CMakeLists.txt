add_library(cars SHARED IMPORTED GLOBAL)

set_target_properties(cars PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/libcars.so)

target_include_directories(cars INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})


# https://cmake.org/cmake/help/latest/command/add_library.html#imported-libraries