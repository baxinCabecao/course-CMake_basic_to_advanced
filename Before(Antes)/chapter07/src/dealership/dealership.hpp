#pragma once
#include <car.hpp>
#include <vector>
#include <string>

class Dealership {
    public:
        ~Dealership();
        void addCar(Car* car);
        std::string getCars();
    private:
        std::vector<Car*> carList;

};