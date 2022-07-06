function(print)
    foreach(VAR IN LISTS ARGN)
        message(NOTICE "${VAR} ${${VAR}}")
    endforeach()
endfunction()

function(configure_global_defines)
    add_compile_definitions($<$<CONFIG:Debug>:DEBUG>)
endfunction()

macro(config_pkg_libraries)
    set(XML2 libxml-2.0)
    # you can add more
    set(PKG_PROJECT_LIBRARIES ${XML2})

    foreach(LIB IN LISTS PKG_PROJECT_LIBRARIES)
        pkg_check_modules(${LIB} ${LIB} REQUIRED)
    endforeach()
endmacro()

macro(locate_external_libs_with_pkg_and_modules)
    # Requires libqt5-qtbase-devel.
    find_package(Qt5 COMPONENTS Core Widgets REQUIRED)
    # Requires libxml2-devel, use full name without .so
    
    include(FindPkgConfig REQUIRED)
    config_pkg_libraries()
endmacro()

function(add_pkg_lib_to_target TARGET LIB)
    target_link_libraries(${TARGET} PUBLIC ${${LIB}_LINK_LIBRARIES})
    target_include_directories(${TARGET} PUBLIC ${${LIB}_INCLUDE_DIRS})
    target_compile_definitions(${TARGET} PUBLIC ${${LIB}_CFLAGS_OTHER})
endfunction()

function(define_install_rules_to_target TARGET)
    install(TARGETS ${TARGET}
                RUNTIME
                    DESTINATION local/bin
                    COMPONENT bins
                LIBRARY
                    DESTINATION local/lib
                    COMPONENT libs)
endfunction()

function(add_library_to_target TARGET LIBS)
    foreach(LIB IN LISTS ${LIBS})
        if(${LIB} IN_LIST PKG_PROJECT_LIBRARIES)
            message("Add library ${LIB} using pkg-config to target ${TARGET}")
            add_pkg_lib_to_target(${TARGET} ${LIB})
        else()
            message("Add library ${LIB} to target ${TARGET}: ${LIB}")
            target_link_libraries(${TARGET} PUBLIC ${LIB})
        endif()
    endforeach()
    define_install_rules_to_target(${TARGET})
endfunction()