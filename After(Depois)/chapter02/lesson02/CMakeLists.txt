cmake_minimum_required(VERSION 3.6)
project(Car VERSION 1.0 LANGUAGES "CXX")

add_executable("${PROJECT_NAME}" main.cpp)

target_link_libraries("${PROJECT_NAME}" PUBLIC Cars)

add_subdirectory(car)