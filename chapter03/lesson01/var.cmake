# variable assignment
set(MY_VARIABLE "TEST")

message(${MY_VARIABLE})

message(a ${TEST})

# Error by incorrect number of arguments, but is simples a variable not resolved/defined
# message(${TEST})

# 
set(${MY_VARIABLE}_MORE "OTHER TEST")

# inner variable and outer variable
message(${${MY_VARIABLE}_MORE})

# you can use double variable expansion
set(VAR1 "VAL1")
set(VAR2 "VAR1")
message(${VAR1})
message(${${VAR2}})

# you can acess and set envioviment variables ass well.
message($ENV{PATH})
set(ENV{PATH} "$ENV{PATH}:.")

# you can unset a variable. The message command you throw a error.
unset(MY_VARIABLE)
# message(${MY_VARIABLE})



# https://cmake.org/cmake/help/v3.0/command/set.html
