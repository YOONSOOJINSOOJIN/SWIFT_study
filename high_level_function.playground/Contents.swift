import UIKit

//func funtionName(externalName param: ParamType) -> ReturnType {
//    ///....
//    return returnValue
//}

// 데이터 타입이 소수점이면 input type도 double, 소수로 표현.

func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

func printTotalPriceDouble(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}

// In-out parameter

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// --- Function as a param, parameter로써의 함수. 함수도 parameter가 될 수 있다.
// 또 한 가지 알아야 할 점은 함수는 순수하게 한 가지 일만 하도록 설계하는 것을 권한다.

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

var function = add
function(4, 2)

function = subtract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)
printResult(divide, 10, 5)
