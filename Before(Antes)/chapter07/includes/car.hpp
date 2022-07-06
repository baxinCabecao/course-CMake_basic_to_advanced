#pragma once
#include <string>

class Car {
    public:
    Car(std::string model, std::string maker);
    std::string getData();
    
    private:
        std::string Model;
        std::string Maker;
};