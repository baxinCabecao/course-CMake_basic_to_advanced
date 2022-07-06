#include "carTest.hpp"
#include <string.h>

void CarTest::setUp() {
    car1 = new Car("Fake model", "Fake maker");
}

void CarTest::testGetData() {
    // Fail
    // CPPUNIT_ASSERT(strcmp("TESTE", car1->getData().c_str()) == 0);

    // Pass
    CPPUNIT_ASSERT(strcmp("Model: Fake model Maker: Fake maker", car1->getData().c_str()) == 0);
}

void CarTest::tearDown() {
    delete car1;
}