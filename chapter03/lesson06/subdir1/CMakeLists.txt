set(MY_VAR "Value in subdir1")
print(MY_VAR)

add_subdirectory(subdir2)
print(MY_VAR)