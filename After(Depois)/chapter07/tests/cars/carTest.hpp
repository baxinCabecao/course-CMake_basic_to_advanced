#include <car.hpp>
#include <cppunit/extensions/HelperMacros.h>

class CarTest : public CppUnit::TestFixture  {
    CPPUNIT_TEST_SUITE( CarTest );
    CPPUNIT_TEST( testGetData );
    CPPUNIT_TEST_SUITE_END();

    public: 
        void setUp();
        void tearDown();
        void testGetData();

    private:
        Car* car1;
};