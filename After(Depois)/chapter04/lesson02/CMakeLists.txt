cmake_minimum_required(VERSION 3.6)
project(Car VERSION 1.0 LANGUAGES "CXX")

# Disable RPATH when build and install
# set(CMAKE_SKIP_RPATH TRUE)
# Disable RPATH only when install
set(CMAKE_SKIP_INSTALL_RPATH TRUE)

add_subdirectory(src)