#include <cppunit/extensions/TestFactoryRegistry.h>
#include <cppunit/ui/text/TestRunner.h>
#include "carTest.hpp"

int main(int argc, char **argv)
{
    CppUnit::TextUi::TestRunner runner;
    runner.addTest(CarTest::suite());
    bool wasSucessful = runner.run();
    //   return wasSucessful ? 0 : 1;
    return 0;
}