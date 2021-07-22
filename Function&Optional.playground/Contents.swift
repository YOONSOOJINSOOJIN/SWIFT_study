import UIKit

func printName(){
    print("---> My name is Cathy")
}

printName()


// param 1개
// 숫자를 받아서 10을 곱해서 출력한다.

func printMultipleOfTen(value: Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

// parma 2개
// 숫자를 받아서 전체 금액을 출력하는 함수

func printTotlaPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

printTotlaPrice(price: 1500, count: 5)


func printTotal(가격 price: Int, 갯수 count: Int) {
    print("Total Price: \(price * count)")
}
printTotal(가격: 1500, 갯수: 10)

// 가격이 default로 1500원일 수도 있다. 그렇다면 이렇게 설정해보자.

func printTotalPriceWithDefultValue(price: Int = 1500, count: Int){
    print("Total Price: \(price * count)")
}

printTotalPriceWithDefultValue(count: 1)
printTotalPriceWithDefultValue(price: 2000, count: 1)

// 화살표는 return 값의 형태를 가리킴.
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice

