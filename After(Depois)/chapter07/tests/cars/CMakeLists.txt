add_executable(maincartest carTest.cpp mainCarTest.cpp)

target_link_libraries(maincartest PRIVATE cppunit cars)

add_test(NAME testCar COMMAND maincartest)

set_tests_properties(testCar PROPERTIES FAIL_REGULAR_EXPRESSION "!!!FAILURES!!!")