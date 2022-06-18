#include <iostream>
#include <car.hpp>
#include <dealership.hpp>

int main(int argc, char const *argv[])
{
    Car* myCar = new Car("Kwid", "Renault");
    Car* myOldCar = new Car("Celta", "GM-Chevrolet");

    Dealership* dealership = new Dealership();
    dealership->addCar(myCar);
    dealership->addCar(myOldCar);


    std::cout << dealership->getCars() << std::endl;
    
    delete dealership;
    return 0;
}
