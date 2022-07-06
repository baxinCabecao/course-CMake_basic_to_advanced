cmake_minimum_required(VERSION 3.6)
project(Car VERSION 1.0 LANGUAGES "CXX" "C")

include_directories(includes)

# Export compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS true)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED true)

include(cmake/config.cmake)

print(CMAKE_CXX_STANDARD CMAKE_CXX_STANDARD_REQUIRED CMAKE_INSTALL_PREFIX)

locate_external_libs_with_pkg_and_modules()
configure_global_defines()

# comes before add project folders
enable_testing()
# https://cmake.org/cmake/help/book/mastering-cmake/chapter/Testing%20With%20CMake%20and%20CTest.html

add_subdirectory(src)
if(BUILD_TESTING)
    add_subdirectory(tests)
endif()


# comes at end of root CMakeLists.txt
set(CPACK_GENERATOR "TGZ")
set(CPACK_ARCHIVE_COMPONENT_INSTALL ON)
include(CPack)
# https://cmake.org/cmake/help/book/mastering-cmake/chapter/Packaging%20With%20CPack.html
# https://cmake.org/cmake/help/latest/cpack_gen/archive.html