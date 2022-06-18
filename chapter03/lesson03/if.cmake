## TRUE: 1, ON, YES, TRUE, Y, or a non-zero number (including floating point numbers). 
## FALSE: 0, OFF, NO, FALSE, N, IGNORE, NOTFOUND

set(MY_VARIABLE 0)
# if(DEFINED MY_VARIABLE)
#You can use the negative operator
if(NOT MY_VARIABLE)
    message("All ok")
else()
    message(FATAL_ERROR "My_variable is not defined!!!")
endif()

set(OTHER_VARIABLE OTHER)

# string comparation
if(OTHER_VARIABLE STREQUAL OTHER)
    message(ok)
endif()

# Can use OR and AND operators as well
if("House" STREQUAL "Hous" OR "House" MATCHES Hous.*)
    message(ok house)
endif()

if(5 EQUAL 5 AND 4 GREATER 5)
    message(ok)
endif()

# becarefull about double variable resolution. IF already resolve variable for you
set(var1 OFF)
set(var2 "var1")
if(NOT ${var2})
    message("Erro, double variable resolution")
endif()

# Proper way to check if a envioriment variable is defined
if(DEFINED $ENV{JAVA_HOME})
    message(JAVA_HOME setado)
endif()

set(MY_LIST "val1;val2;val3")

# enable IN_LISTS operator
cmake_policy(SET CMP0057 NEW)

if(val4 IN_LIST MY_LIST)

elseif(val1 IN_LIST MY_LIST)
    message("Val1 encontrado")
endif()

# check if file exist
if(EXISTS /usr/bin/bash)
    message("O bash existe")
endif()

# https://cmake.org/cmake/help/latest/command/if.html