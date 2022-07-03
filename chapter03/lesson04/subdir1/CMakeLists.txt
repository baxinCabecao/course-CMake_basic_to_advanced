set(MY_VAR "Value in subdir1")
message("Subdir 1 after change = ${MY_VAR}")

add_subdirectory(subdir2)
message("Subdir 1 after change in subdir 2 = ${MY_VAR}")