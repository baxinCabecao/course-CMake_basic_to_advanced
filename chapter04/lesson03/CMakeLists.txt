cmake_minimum_required(VERSION 3.17)
project(Cars VERSION 1.0.0)

add_library(cars SHARED car.cpp)

target_include_directories(cars PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

add_custom_command(TARGET cars 
                POST_BUILD 
                COMMAND ${CMAKE_STRIP} $<TARGET_FILE:cars>)



add_custom_target(documentation ALL COMMENT "Geracao de documentacao via Doxygen" DEPENDS Documentacao_final)

add_custom_command(OUTPUT Documentacao_inicial
COMMAND doxygen doxygen.ini
WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
VERBATIM)

add_custom_command(OUTPUT Documentacao_final 
                    DEPENDS Documentacao_inicial
                    COMMAND rm -rf ${CMAKE_BINARY_DIR}/doxygen &&
                            mv ${CMAKE_SOURCE_DIR}/doxygen ${CMAKE_BINARY_DIR}
                    WORKING_DIRECTORY
                    USES_TERMINAL)


add_dependencies(documentation cars)


# https://cmake.org/cmake/help/latest/command/add_custom_command.html
# https://cmake.org/cmake/help/latest/command/add_custom_target.html
# https://cmake.org/cmake/help/latest/command/add_dependencies.html