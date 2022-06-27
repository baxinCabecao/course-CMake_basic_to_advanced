add_executable("${PROJECT_NAME}" main.cpp)

target_link_libraries("${PROJECT_NAME}" PUBLIC cars)
target_link_libraries("${PROJECT_NAME}" PUBLIC dealership)