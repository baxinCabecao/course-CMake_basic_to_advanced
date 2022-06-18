# simple print function
function(print VAR)
    message(${VAR})
endfunction()

set(MYVAR "Value Test")
# print(${MYVAR})

# The functon will evaluete the parameter for us
function(print_better VAR)
    message(${${VAR}})
endfunction()
# print_better(MYVAR)

# ARGV = List of parameters, ARGC= Number os parameters, and ARGV0 = first argument...
function(print_even_better)
    foreach(VALUE IN LISTS ARGV)
        message(${${VALUE}})
    endforeach()
endfunction()
set(OTHER_VAR "Another Value")

print_even_better(MYVAR OTHER_VAR)

# functions have their own scope
function(set_value_escoped VARIABLE)
    set(${VARIABLE} "New Value")
    print_even_better(${VARIABLE})
endfunction()
set_value_escoped(OTHER_VAR)
print_even_better(OTHER_VAR)

# In functions, ARGV, ARGC, and ARGV0... are variables 
function(set_value_parent VARIABLE)
    set(${VARIABLE} "New Value" PARENT_SCOPE)
    if(ARGV0)
        message("Dentro do if na funcao")
    endif()
endfunction()
set_value_parent(OTHER_VAR)
print_even_better(OTHER_VAR)

# macros uses the parent scope, like a preprocessor macro
macro(macro_set_value VARIABLE)
    set(${VARIABLE} "New new Value")
endmacro()
macro_set_value(OTHER_VAR)
print_even_better(OTHER_VAR)

# Attencion!!! in macro, ARGC, ARGV, and ARGV0... are not variables!!!!
macro(macro_unsdertand VARIABLE)
    message("ARGV0 = ${${ARGV0}}")
    if(ARGV0)
        message("Dentro do if na macro")
    endif()
endmacro()
macro_unsdertand(OTHER_VAR)


# https://cmake.org/cmake/help/latest/command/function.html
# https://cmake.org/cmake/help/latest/command/macro.html