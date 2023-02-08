import UIKit

// Suppose you are creating a calculator application. To report errors for invalid math operations, you will write throwable functions. You will also call the functionality and handle errors with do-catch.

class Calculator {
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
}

let calculator = Calculator()

enum CalculatorError: Error {
    case divisionByZero
}

do {
    let successfulResult = try calculator.divide(x: 1, y: 2)
    print("successfulResult")
    let invalidResult = try calculator.divide(x: 1, y: 0)
}
catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed.")
}

