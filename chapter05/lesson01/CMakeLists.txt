cmake_minimum_required(VERSION 3.17)
project(XMLReader VERSION 1.0.0)

add_executable(${PROJECT_NAME} main.c)

# Requires libxml2-devel, not use soname
find_library(LIB_libxml2 xml2 REQUIRED)

message(${LIB_libxml2})

target_link_libraries(${PROJECT_NAME} PUBLIC ${LIB_libxml2})

# not mandatory, but sometimes need
find_path(XML2_INCLUDES NAMES libxml PATHS /usr/include REQUIRED)

message(${XML2_INCLUDES})

target_include_directories(${PROJECT_NAME} PUBLIC ${XML2_INCLUDES})

# Bad way, is not a library managed by your project!!
#add_library(xml2 SHARED IMPORTED GLOBAL)
#set_target_properties(xml2 PROPERTIES IMPORTED_LOCATION /usr/lib64/libxml2.so)
#target_link_libraries(${PROJECT_NAME} PUBLIC xml2)



# https://cmake.org/cmake/help/latest/command/find_library.html
# https://cmake.org/cmake/help/latest/command/find_path.html