# simples RANGE <stop> loop
foreach(INDEX RANGE 10)
    message("INDEX = ${INDEX}")
endforeach()

message("end of loop")

# RANGE <start> <stop> <step>
foreach(INDEX RANGE 1 10 2)
    message("INDEX = ${INDEX}")
endforeach()
message("end of loop")

# iterate based in a items list
foreach(VALUE IN ITEMS Val1 Val2 val3)
    message("VALUE = ${VALUE}")
endforeach()
message("end of loop")

# Also works
foreach(VALUE IN ITEMS Val1;Val2;val3)
    message("VALUE = ${VALUE}")
endforeach()
message("end of loop")

# Work as only one item list
foreach(VALUE IN ITEMS "Val1;Val2;val3")
    message("VALUE = ${VALUE}")
endforeach()
message("end of loop")

# Proper way to iterate over a list
set(MY_LIST "Val1;Val2;val3")
foreach(VALUE IN LISTS MY_LIST)
    message("VALUE = ${VALUE}")
endforeach()
message("end of loop")

set(MY_VARIABLE 1)

# Same if conditionals
while(MY_VARIABLE LESS 5)
    message(${MY_VARIABLE})
    math(EXPR OUTPUT_VARIABLE "${MY_VARIABLE} + 1" OUTPUT_FORMAT DECIMAL)
    set(MY_VARIABLE  ${OUTPUT_VARIABLE})
endwhile()

# https://cmake.org/cmake/help/latest/command/foreach.html
# https://cmake.org/cmake/help/latest/command/while.html
# https://cmake.org/cmake/help/latest/command/math.html