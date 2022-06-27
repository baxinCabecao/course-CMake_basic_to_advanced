cmake_minimum_required(VERSION 3.17)
project(Cars VERSION 1.0.0)

add_library(cars SHARED car.cpp)

target_include_directories(cars PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(cars PROPERTIES PUBLIC_HEADER car.hpp)

add_executable(main main.cpp)

target_link_libraries(main PRIVATE cars)

# set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR})

include(GNUInstallDirs)

message(${CMAKE_INSTALL_BINDIR})
message(${CMAKE_INSTALL_LIBDIR})
message(${CMAKE_INSTALL_FULL_BINDIR})
message(${CMAKE_INSTALL_FULL_LIBDIR})
message(${CMAKE_INSTALL_FULL_DATADIR})
message(${CMAKE_INSTALL_FULL_INCLUDEDIR})


message(${CMAKE_INSTALL_PREFIX})

install(TARGETS main cars 
                RUNTIME 
                        DESTINATION local/bin  
                        PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_WRITE GROUP_EXECUTE WORLD_READ WORLD_WRITE WORLD_EXECUTE SETUID SETGID
                        COMPONENT executaveis
                PUBLIC_HEADER 
                        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
                        COMPONENT headers
                LIBRARY 
                        DESTINATION local/lib
                        COMPONENT libraary)

#install(TARGETS cars 
#        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
#        LIBRARY DESTINATION local/lib)


#install(TARGETS main RUNTIME 
#        DESTINATION local/bin  
#        PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_WRITE GROUP_EXECUTE WORLD_READ WORLD_WRITE WORLD_EXECUTE SETUID SETGID
#        COMPONENT executaveis)


install(FILES doxygen.ini 
        DESTINATION ${CMAKE_INSTALL_DATADIR}/${PROJECT_NAME}
        PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ
        COMPONENT docs)





# https://cmake.org/cmake/help/latest/command/install.html