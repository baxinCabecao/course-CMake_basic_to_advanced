#include "dealership.hpp"

Dealership::~Dealership() {
    for(auto car: carList)
        delete car;
}

void Dealership::addCar(Car* car) {
    carList.push_back(car);
#ifdef DEBUG
    fprintf(stderr, "Um carro foi adicionado\n");
#endif
}
std::string Dealership::getCars() {
    std::string output;
    for(auto car: carList) {
        output += car->getData();
        output += "\n";
    }

    return output;
}