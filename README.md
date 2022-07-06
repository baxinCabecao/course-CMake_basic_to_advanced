# CMake Course
This is a contend for CMake Course, from basic to advanced.

# Structure
This course is splited in tho folders:
 - Before(Antes): withouth the CMake files created
 - After(Depois): after the CMake files created

# Dependencies
This course requires:
 - build-essential(gcc/g++, make and others)
 - cmake
 - pkg-config
 - ninja
 - libxml2
 - Qt5 Base and Widgets
 - cppunit
 - doxygen

In a Debian-like distro you can install all with comand below:

```bash
apt-get install build-essential cmake ninja-build libxml2-dev pkg-config libqt5widgets5 libqwt-qt5-dev libcppunit-dev doxygen qtbase5-dev
```

# Unsderstanding PUBLIC, INTERFACE and PRIVATE
|              | PUBLIC | INTERFACE | PRIVATE |   |
|--------------|--------|-----------|---------|---|
| Own Target   | X      |           | X       |   |
| Other Target | X      | X         |         |   |
|              |        |           |         |   |