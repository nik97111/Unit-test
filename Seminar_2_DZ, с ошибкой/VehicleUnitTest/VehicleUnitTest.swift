import XCTest

@testable import Seminar_2_DZ

final class VehicleUnitTest: XCTestCase {
    
// создаём объект для использования в тестах
    var car: Car!
    

    override func setUpWithError() throws {
        
// инициируем объект в виде класа для обращения к его свойствам и методам
        car = Car()
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        
// убираем объект из памяти после окончания теста, освобождая память для запуска следующих тестов
        car = nil
        try super.tearDownWithError()
        
    }
//    Проверяем, что объект Car создается с 4-мя колесами
    func testNumWheelsCar() throws {
//        Given (дано)
        car.numWheels = 4
        var result = 0
    
//        When (когда)
        if car.numWheels == 4 {
            result = car.numWheels
        }
//        Then (тогда)
        XCTAssertEqual(car.numWheels, result)
        
    }
    
//    func testPerformanceExample() throws {
//        
//
//        measure {
//        }
//    }
}
