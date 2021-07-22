import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

// 내 풀이.


// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기 풀이 -> 정답

func FirtProb(first: String, last: String) {
    print("full name: \(last + first)")
}

FirtProb(first: "Sujin", last: "Yun")

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기 풀이
// (return 값으로 반환되는 것이 아닌데 화살표 return 값을 작성하여 약간의 오류 있었음. 언더바로 파라미터 이름 제거 해결, 화살표 return 값 해결.)

func SecondProb(_ f: String, _ l: String) {
    print("Full name: \(l) \(f)")
}

SecondProb("soojin", "Yun")

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기 -> 정답

func ThirdProb(first: String, last: String) -> String {
    let full = last + first
    return full
}

ThirdProb(first: "sujin", last: "Yun")
