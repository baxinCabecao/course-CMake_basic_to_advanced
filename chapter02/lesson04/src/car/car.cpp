#include <car.hpp>
Car::Car(std::string model, std::string maker): Model(model), Maker(maker) {

}
std::string Car::getData() {
    return "Model: " + Model + " Maker: " + Maker;
}