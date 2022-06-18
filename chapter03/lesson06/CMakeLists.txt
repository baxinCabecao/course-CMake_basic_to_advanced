cmake_minimum_required(VERSION 3.17)
project(Cars VERSION 1.0.0)

function(print)
    message(${${ARGV0}})
endfunction()

set(MY_VAR "Value Top Level")
print(MY_VAR)
add_subdirectory(subdir1)
print(MY_VAR)