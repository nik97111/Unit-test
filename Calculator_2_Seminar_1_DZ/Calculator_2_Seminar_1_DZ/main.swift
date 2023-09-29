

import Foundation

print("Привет. Я - калькулятор. Давайте посчитаем сумму покупки с учетом скидки.")

class Calculator {
    // Сумма покупки без скидки
    var purchaseAmountWithoutDiscount: Double? = nil
    // Покупка(сумма покупки без скидки)
    func purchase(purchaseAmountWithoutDiscount: Double) throws -> Double { /* Объявили ф-ю для расчета суммы со скидкой и добавили в нее проверку на возможные ошибки */
        guard purchaseAmountWithoutDiscount > 0 else { /* Введенная сумма покупки без скидки не может быть отрицательной */
            throw CalculatorError.theEnteredPurchaseAmountCannotBeNegative
        }
        guard purchaseAmountWithoutDiscount != 0 else {  /* Введенная сумма покупки без скидки не может быть равна 0 */
            throw CalculatorError.theEnteredPurchaseAmountCannotBeEqualTo_0
        }
        // Сумма со скидкой
        var discountedAmount: Double = 0
        if purchaseAmountWithoutDiscount > 0 && purchaseAmountWithoutDiscount <= 3000{
            discountedAmount = purchaseAmountWithoutDiscount - (purchaseAmountWithoutDiscount * 0.03)
        } else if purchaseAmountWithoutDiscount > 3001 && purchaseAmountWithoutDiscount <= 8000 {
            discountedAmount = purchaseAmountWithoutDiscount - (purchaseAmountWithoutDiscount * 0.08)
        } else {
            discountedAmount = purchaseAmountWithoutDiscount - (purchaseAmountWithoutDiscount * 0.1)
        }
        print("Сумма покупки с учетом скидки")
        // Возвращаем значение суммы со скидкой
        return discountedAmount
    }
}
// Сумма покупки
let purchaseAmount = Calculator()  /* Создали экземпляр класса */
print(try purchaseAmount.purchase(purchaseAmountWithoutDiscount: 2367))


enum CalculatorError: Error {  /* Перечисление CalculatorError для представления ошибок */
    // Введенная сумма покупки не может быть отрицательной
    case theEnteredPurchaseAmountCannotBeNegative
    // Ввееденная сумма покупки не может быть равна 0
    case theEnteredPurchaseAmountCannotBeEqualTo_0
}




