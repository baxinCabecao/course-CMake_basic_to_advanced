# A list is only a comma separeted string
set(MYLIST "var1;var2;var3")
# set(MYLIST var1 var2 var3)

# is not a list!!!!
# set(MYLIST "var1 var2 var3")

message(${MYLIST})
message("${MYLIST}")

list(APPEND MYLIST var4)
message("${MYLIST}")

list(REMOVE_ITEM MYLIST var3)
message("${MYLIST}")

list(APPEND MYLIST var4)
message("${MYLIST}")

list(REMOVE_DUPLICATES MYLIST)
message("${MYLIST}")

list(REMOVE_AT MYLIST 0)
message("${MYLIST}")

list(GET MYLIST 1 OUTPUT_VAR)
message("${OUTPUT_VAR}")

# return the position
list(FIND MYLIST var2 OUTPUT_VAR)
message("${OUTPUT_VAR}")

# return -1 if not found
list(FIND MYLIST var5 OUTPUT_VAR)
message("${OUTPUT_VAR}")

# https://cmake.org/cmake/help/latest/command/list.html