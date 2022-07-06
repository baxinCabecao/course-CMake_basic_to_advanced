set(MY_VAR "Good evening")
message(${MY_VAR})

string(TOUPPER ${MY_VAR} OUTPUT)
message(${OUTPUT})
 
string(CONCAT OUTPUT ${MY_VAR} "!!!")
message(${OUTPUT})
 
string(REGEX MATCH "^[a-zA-Z]+" OUTPUT ${MY_VAR} )
message(${OUTPUT})
 
string(STRIP  "   ${MY_VAR}   " OUTPUT)
message("   ${MY_VAR}   ")
message(${OUTPUT})

string(MD5 OUTPUT "Text")
message(${OUTPUT})

file(MAKE_DIRECTORY teste)

file(GLOB OUTPUT LIST_DIRECTORIES true RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)
message("${OUTPUT}")

file(REMOVE_RECURSE teste)

set(MY_VAR "/usr/lib/no_real.so")
get_filename_component(OUTPUT ${MY_VAR} NAME)
message("${OUTPUT}")
get_filename_component(OUTPUT ${MY_VAR} DIRECTORY)
message("${OUTPUT}")
get_filename_component(OUTPUT ${MY_VAR} NAME_WE)
message("${OUTPUT}")



# https://cmake.org/cmake/help/latest/command/string.html
# https://cmake.org/cmake/help/latest/command/file.html
# https://cmake.org/cmake/help/latest/command/get_filename_component.html