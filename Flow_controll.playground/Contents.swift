import UIKit
import Foundation

////----- While
////
////while 조건 {
////    code...
////}
//print("----while----")
//var i = 0
//while i < 10 {
//    print(i)
////    if i == 5 {
////        break
////    }
//    i += 1
//}
//print("----repeat----")
//i = 10
//repeat {
//    print(i)
//    i += 1
//} while i < 10
//
////while
////조건 > 코드 수행 > 조건 > 코드 수행
//
////repeat
////코드 수행 > 조건 > 코드 수행 > 조건
//
//
////----- For loop
//
//let closedRange = 0...10 // 0 ~ 10까지 한번에 표현.
//let halfClosedRange = 0..<10 // 0 ~ 9까지 한번에 표현. upperbound는 똑같이 표시됨.
//
//var sum = 0
//for i in halfClosedRange {
//    print("---> \(i)")
//    sum += i
//}
//
//print("---> total sum: \(sum)")
//
//
//var sinValue: CGFloat = 0 // sin그래프를 그리는 함수. CGFloat = 하나의 데이터 타입. float 타입인데...yes..
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
//let name = "sujin"
//for i in closedRange {
//    print("---> name:  \(name)")
//}
//// 실제 쓰지 않는 변수 for loop의 i 같은 경우, warning이 뜸. 그렇기 때문에 _(언더바)로 대체해서 쓰는 경우가 많음.
//
//for i in closedRange {
//    if i % 2 == 0{
//        print("---> 짝수: \(i)")
//    }
//}
//
//for i in closedRange where i % 2 == 0 {
//    print("---> 짝수: \(i)")
//}
//
//for i in closedRange{
//    if i % 2 == 1 {
//        continue // 건너뛰고 싶을 때 사용.
//    }
//    print("---> \(i)")
//}
//// 중첩, 중첩은 성능면에서 좋지 않아 많이 사용하지 않는 것이 좋다.
//for i in closedRange {
//    for j in closedRange {
//        print("gugu -> \(i) * \(j) = \(i * j)")
//    }
//}

//----- Switch

//let num = 10
//
//// switch 문에서 default 케이스로 기본 처리 구문을 작성해줘야 한다.
//switch num {
//case 0:
//    print("---> 0 입니다.")
//case 0...10:
//    print("---> 0과 10 사이입니다.")
//case 10:
//    print("---> 10 입니다.")
//default:
//    print("---> 나머지 입니다.")
//}

// 구문에 대해서도 switch문 사용이 가능하다.
//let pet = "bird"
//
//switch pet {
//case "dog", "cat", "bird":
//    print("---> 집에 사는 친구네요? ")
//default:
//    print("---> 잘 모르는 친구네요..")
//}
//
//let a_num = 5
//switch a_num {
//case _ where a_num % 2 == 0:
//    print("---> 짝수")
//default:
//    print("---> 홀수")
//}

let coordinate = (x: 0, y: 10)

switch coordinate {
case (0, 0):
    print("---> 원점이네요.")
case (_, 0):
    print("---> x축이네요. ")
case (0, _):
    print("---> y축이네요.")
default:
    print("---> 좌표 어딘가네요.")
}

