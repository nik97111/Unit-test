/*
 Создать абстрактный базовый класс "Vehicle" и два его подкласса "Car" и "Motorcycle".

 Базовый класс "Vehicle" содержит абстрактные методы "testDrive()" и "park()", а также поля "company", "model", "yearRelease", "numWheels" и "speed".

 Класс "Car" расширяет "Vehicle" и реализует его абстрактные методы. При создании объекта "Car" число колес устанавливается в 4, а скорость в 0. В методе "testDrive()" скорость устанавливается на 60, а в методе "park()" - обратно в 0.

 Класс "Motorcycle" также расширяет "Vehicle" и реализует его абстрактные методы. При создании объекта "Motorcycle" число колес устанавливается в 2, а скорость в 0. В методе "testDrive()" скорость устанавливается на 75, а в методе "park()" - обратно в 0.
 
 
 
 *Задание 1.
 Проект Vehicle. Написать следующие тесты с использованием JUnit5:

 - Проверить, что экземпляр объекта Car также является экземпляром транспортного средства (используя оператор instanceof).

 - Проверить, что объект Car создается с 4-мя колесами.

 - Проверить, что объект Motorcycle создается с 2-мя колесами.

 - Проверить, что объект Car развивает скорость 60 в режиме тестового вождения (используя метод testDrive()).

 - Проверить, что объект Motorcycle развивает скорость 75 в режиме тестового вождения (используя метод testDrive()).

 - Проверить, что в режиме парковки (сначала testDrive, потом park, т.е. эмуляция движения транспорта) машина останавливается (speed = 0).

 - Проверить, что в режиме парковки (сначала testDrive, потом park, т.е. эмуляция движения транспорта) мотоцикл останавливается (speed = 0).
 */

// Так как в swift абстрактных классов нет, то используем интерфейс (протокол Transport) для методов testDrive и park


import Foundation

protocol Transport {
    
//  Определяем метод testDrive (тест-драйв)
    func testDrive()
    
//  Определяем метод park (парковка)
    func park()
    
}


// Определяем базовый класс Vehicle (транспортное средство)
class Vehicle: Transport {
    
//  Определяем свойство company (компания)
    let company = ""
    
//  Определяем свойство model (модель)
    let model = ""
    
//  Определяем свойство yearRelease (год выпуска)
    let yearRelease = 0
    
//  Определяем свойство numWheels (количество колес)
    var numWheels = 0
    
//  Определяем свойство speed (скорость)
    var speed = 0
    
//  Реализация метода testDrive протокола Transport
    
    func testDrive() {
        
    }
    
//  Реализация метода park протокола Transport
    func park() {
        
    }
    
}

//  Определяем подкласс Car с суперклассом Vehicle (наследуем от Vehicle):
class Car: Vehicle {
//  Переопределяем метод testDrive(), который Car наследует от Vehicle:
    override func testDrive() {
        numWheels = 60
    }
//  Переопределяем метод park(), который Car наследует от Vehicle:
    override func park() {
            speed = 0
    }
}

//  Создаем экземпляр car класса Car
let car = Car()
car.numWheels = 4
car.speed = 0


//  Определяем подкласс Motorcycle с суперклассом Vehicle (наследуем от Vehicle):
class Motorcycle: Vehicle {
//  Переопределяем метод testDrive(), который Motorcycle наследует от Vehicle:
    override func testDrive() {
        numWheels = 75
    }
//  Переопределяем метод park(), который Motorcycle наследует от Vehicle:
    override func park() {
        speed = 0
    }
}
//  Создаем экземпляр motorcycle класса Motorcycle
let motorcycle = Motorcycle()
motorcycle.numWheels = 2
motorcycle.speed = 0
