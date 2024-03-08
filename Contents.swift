import UIKit
    
    class AddNumber {
        func operate(_ num1: Double, _ num2: Double) -> Double {
            return num1 + num2 }
    }
    
    class SubtractNumber {
        func operate(_ num1: Double, _ num2: Double) -> Double {
            return num1 - num2  }
    }
    
    class MultiplyNumber {
        func operate(_ num1: Double, _ num2: Double) -> Double {
            return num1 * num2  }
    }
    
    class DivideNumber {
        func operate(_ num1: Double, _ num2: Double) -> Double? {
            if num2 == 0 {
                return nil
            }
            return num1 / num2  }
    }
    
    class ModuloNumber {
        func operate(_ num1: Double, _ num2: Double) -> Double {
            return Double(Int(num1) % Int(num2))  }
    }

class Calculator {
    let add = AddNumber()
    let subtract = SubtractNumber()
    let multiply = MultiplyNumber()
    let divide = DivideNumber()
    let modulo = ModuloNumber()
    
    func calculate(_ num1: Double, _ num2: Double) {
        let addResult = add.operate(num1, num2)
        let subtractResult = subtract.operate(num1, num2)
        let multiplyResult = multiply.operate(num1, num2)
        let divideResult = divide.operate(num1, num2)
        let moduloResult = modulo.operate(num1, num2)
        
        print(addResult)
        print(subtractResult)
        print(multiplyResult)
        print(divideResult!)
        print(moduloResult)
    }
}

let calculator = Calculator()
calculator.add.operate(1, 2)
calculator.subtract.operate(108, 10)
calculator.multiply.operate(5, 6)
calculator.divide.operate(7, 0)
calculator.modulo.operate(15, 4)

