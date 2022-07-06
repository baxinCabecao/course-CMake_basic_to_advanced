add_executable(xmlhandler main.c)

add_library_to_target(xmlhandler XML2)
# https://cmake.org/cmake/help/latest/module/FindPkgConfig.html