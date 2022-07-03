cmake_minimum_required(VERSION 3.17)
project(Cars VERSION 1.0.0)


set(MY_VAR "Value Top Level")

message("TOP Value = ${MY_VAR}")
add_subdirectory(subdir1)
message("TOP Value after all subdirs = ${MY_VAR}")