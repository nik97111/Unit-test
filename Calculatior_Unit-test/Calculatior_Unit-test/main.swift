//
//  main.swift
//  Calculatior_Unit-test
//
//  Created by Николай Чупреев on 28.09.2023.
//

import Foundation

import Foundation

print("Привет. Я - калькулятор. Давайте посчитаем сумму покупки с учетом скидки.")

class Calculator {
//    Сумма покупки без скидки
    let purchaseAmountWithoutDiscount: Double? = nil
    
    func purchaseAmount(purchaseAmountWithoutDiscount: Double) throws {
        guard purchaseAmountWithoutDiscount > 0 else {
                throw CalculatorError.numberLessThanOrEqualTo_0
            }
        var discountedAmount: Double = 0
            if purchaseAmountWithoutDiscount <= 3000 {
                discountedAmount = purchaseAmountWithoutDiscount - (purchaseAmountWithoutDiscount * 0.03)
            } else if purchaseAmountWithoutDiscount > 3001 && purchaseAmountWithoutDiscount <= 8000 {
                discountedAmount = purchaseAmountWithoutDiscount - (purchaseAmountWithoutDiscount * 0.08)
            } else {
                discountedAmount = purchaseAmountWithoutDiscount - (purchaseAmountWithoutDiscount * 0.1)
            }
        print("Сумма покупки с учетом скидки =", discountedAmount)
    }
}
    
let result = Calculator()
print(try result.purchaseAmount(purchaseAmountWithoutDiscount: 0))


enum CalculatorError: Error {
// Число меньше или равно 0
    case numberLessThanOrEqualTo_0
}


