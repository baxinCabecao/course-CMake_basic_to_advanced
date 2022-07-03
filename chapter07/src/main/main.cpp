#include <iostream>
#include <QApplication>
#include <QPushButton>
#include <car.hpp>
#include <dealership.hpp>

int main(int argc, char *argv[])
{
    Car* myCar = new Car("Kwid", "Renault");
    Car* myOldCar = new Car("Celta", "GM-Chevrolet");

    Dealership* dealership = new Dealership();
    dealership->addCar(myCar);
    dealership->addCar(myOldCar);


    QApplication a(argc, argv);
    QPushButton button (dealership->getCars().c_str());
    button.show();

    a.exec(); // .exec starts QApplication and related GUI, this line starts 'event loop'   
    return 0;
}
