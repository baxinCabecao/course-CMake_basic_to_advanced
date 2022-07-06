#include <iostream>
#include "car.hpp"

int main(int argc, char const *argv[])
{
    Car* mycar = new Car("Kwid", "Renault");
    std::cout << mycar->getData() << std::endl;
    
    delete mycar;
    return 0;
}
