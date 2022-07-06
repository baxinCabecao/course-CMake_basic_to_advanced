cmake_minimum_required(VERSION 3.17)
project(QtHellowWorld VERSION 1.0.0)

add_executable(${PROJECT_NAME} main.cpp)

# Requires libqt5-qtbase-devel, use full name without .so
find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Widgets)


# https://cmake.org/cmake/help/latest/manual/cmake-qt.7.html
# https://doc.qt.io/qt-5/cmake-get-started.html#building-a-c-gui-application