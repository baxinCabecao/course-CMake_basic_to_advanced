add_executable("${PROJECT_NAME}" main.cpp)

set(LIBS_FOR_TARGET_IN_CURRENT_DIR cars dealership Qt5::Widgets)

add_library_to_target("${PROJECT_NAME}" LIBS_FOR_TARGET_IN_CURRENT_DIR)