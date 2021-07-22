import UIKit

//var str = "Hello, playground"
//
//let value = arc4random_uniform(100)
//
//print("----> \(value)")

// --- Tuple

let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

/*
 밑의 예시처럼 표현하는 것이 위의 예시보다 더 명시적이며 컴팩트하다.
 */
let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

/*
 위의 두 줄의 과정을 밑의 과정 한 줄로 구현할 수 있다.
 */
let (x3, y3) = coordinatesNamed

x3
y3

// --- Tuple

// --- Boolean (참 / 거짓), (on / off)

let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

if isFourGreaterThanFive{
    print("---> 참")
} else {
    print("---> 거짓")
}

/*
 if 조건... {
    조건이 참인 경우에 수행하는 코드를 여기에..
 } else {
    조건이 거짓인 경우에 수행하는 코드를 여기에..
 }
 */

let a = 5
let b = 10

if a > b {
    print("---> a가 크다.")
} else {
    print("---> b가 크다.")
}

let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2

if isTwoNameSame {
    print("이름이 같다.")
} else {
    print("이름이 다르다.")
}

let isJason = name2 == "Jason"
let isMale = false

let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale

//let greetingMessage: String
//if isJason {
//    greetingMessage = "Hello Jason"
//} else {
//    greetingMessage = "Hello Somebody"
//}
//print("Msg: \(greetingMessage)")

let greetingMessage: String = isJason ? "Hello Jason" : "Hello Somebody"
print("Msg: \(greetingMessage)")

// --- Boolean

// --- Scope (변수가 사용되는 범위를 Scope이라 한다.)

var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}

salary += hours * payPerHour


