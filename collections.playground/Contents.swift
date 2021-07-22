import UIKit

//// Collection
//// 1. Array
//// : 각 통에 담는 요소들. 순서에 따라 담는.
//// 두 가지만 기억해라. 통에 담을 때는 같은 타입만 담아라 & array에는 index 라는 순번이 있다.
//// 중요한 라이브러리들 -> isEmpty, count, index로 값 접근하는 방법, for문으로 값 빼오는 법
//
//var evenNumbers: [Int] = [2, 4, 6, 8]
//// let evenNumbers2: Array<Int> = [2, 4, 6, 8] (= 윗줄과 같은 구문)
//
//// 추가할 때 변수가 정적변수이면 에러가 생긴다. 그럴 떈 동적 변수인 var로 고쳐줘야 한다.
//evenNumbers.append(10)
//evenNumbers += [12, 14, 16]
//evenNumbers.append(contentsOf: [18, 20])
//
//let isEmpty = evenNumbers.isEmpty // evenNumbers가 비어있다면 true, 아니라면 false
//
//evenNumbers.count
//
//print(evenNumbers.first) // optional(2)로 출력된다.
//// 왜냐하면 var로 설정했기 떄문에 내가 변수의 값을 바꿀수도 있기 때문이다.
//
////let firstItem = evenNumbers.first
//
//if let firstElement = evenNumbers.first {
//    print("---> first item is : \(firstElement)")
//} // if문 에서는 첫번째 요소가 있다는 것을 확인했으니까 optional이 아닌 값으로만 나올 수 있다.
//
//evenNumbers.max()
//evenNumbers.min()
//
//var firstItem = evenNumbers[0]
//var secondItem = evenNumbers[1]
//var tenthItem = evenNumbers[9]
//
//// ---->
//
//let firstThree = evenNumbers[0...2]
//
//evenNumbers.contains(3)
//evenNumbers.contains(4)
//
//evenNumbers.insert(0, at: 0)
//evenNumbers
//
////evenNumbers.removeAll()
//evenNumbers.remove(at: 0)
//evenNumbers
//
//
//// update하는 방법
//evenNumbers[0] = -2
//evenNumbers
//
//evenNumbers[0...2] = [-2, 0, 2]
//evenNumbers
//
////evenNumbers.swapAt(0, 9)
//
////for num in evenNumbers {
////    print(num)
////}
//
//for (index, num) in evenNumbers.enumerated() {
//    print("idx: \(index), num: \(num)")
//}
//
//let firstThreeRemoved = evenNumbers.dropFirst(3)
//firstThreeRemoved
//
//let lastRemoved = evenNumbers.dropLast()
//lastRemoved
//
//let firstAThree = evenNumbers.prefix(3)
//firstAThree
//
//let lastThree = evenNumbers.suffix(3)
//lastThree
//
//evenNumbers

//// 2. Dictionary
//// : array와 다르게 순서가 없고, key와 value의 쌍으로 구성.
//// key는 unique해야 한다.
//// -> 의미 단위로 찾을 때 유용하다. (array는 순서 단위) 통에 있는 값을 찾을 때 key를 사용해 찾는다.
//
//var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
////var scoreDic: Dictionary <String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]
//
//// optional binding으로 가져오면 좀 더 안정적으로 가져올 수 있다.
//if let score = scoreDic["Jason"] {
//    score
//} else {
//    // .. score 없음
//}
//
//scoreDic["Jason"]
//scoreDic["Jarry"]
//
////scoreDic = [:]
//scoreDic.isEmpty
//scoreDic.count
//
//
//// update하는 법 (key 값과 value 값을 꼭 넣어야 함.)
//scoreDic["Jason"] = 99
//scoreDic
//
//// 사용자 추가
//scoreDic["Jack"] = 100
//scoreDic
//
//// 사용자 제거
//scoreDic["Jack"] = nil
//scoreDic
//
//// for loop
//
//for (name, score) in scoreDic {
//    print("\(name), \(score)")
//}
//
//for key in scoreDic.keys {
//    print(key)
//}
//
//
//// ----> 도전 과제
//// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
//// 2. 여기서 도시를 부산으로 업데이트 하기
//// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기
//
//// 1. 답
//var myDict: [String: String] = ["이름": "윤수진", "직업": "ios개발자", "도시": "서울"]
//
//// 2. 답
//myDict["도시"] = "부산"
//
//myDict
//
//// 3. 답
//func myDic(dic: [String: String]) {
//    if let name = dic["이름"], let city = dic["도시"] {
//        print(name, city)
//    }
//    else {
//        print("404 not found")
//    }
//}
//
//myDic(dic: myDict)


// 3. Set
// : 순서가 없고 유일한 값을 가지는 타입. 순서가 상관없고 중복이 없는 unique한 아이템을 사용할 때 쓴다.

//var someArray: Array<Int> = [1, 2, 3, 1]
//var someSet: Set<Int> = [1, 2, 3, 1, 2] // 중복이 돼도 unique한 아이템만 출력.
//
//someSet.isEmpty
//someSet.count
//
//someSet.contains(4)
//someSet.contains(1)
//
//someSet.insert(5)
//someSet
//
//someSet.remove(1)
//someSet

// 4. Closure
// : 이름이 없는 메소드.
// var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }

//var multiplyClosure: (Int, Int) -> Int = { a, b in
//    return a * b
//}
//
//let result = multiplyClosure(4, 2)
//// int형 2개를 받아서 int로 출력하겠다는 의미.
//
//func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
//    let result = operation(a, b)
//    return result
//}
//
//operateTwoNum(a: 4, b: 2, operation: multiplyClosure)
//
//var addClosure: (Int, Int) -> Int = { a, b in
//    return a + b
//}
//
//operateTwoNum(a: 4, b: 2, operation: addClosure)
//
//operateTwoNum(a: 4, b: 2) { a, b in
//    return a / b
//}
//
//// - Capturing Value
//// : 원래는 바깥 쪽에 있던 constant를 잡아서 해당하는 scope을 벗어나면 못 썼는데, closure에 캡쳐되면 해당하는 scope을 벗어나더라도 사용 가능.
//// swift의 강력한 기능.
//
//let voidClosure: () -> Void = {
//    print("iOS Engineer love you, closure love you")
//}
//
//voidClosure()
//
//// Capturing Values
//
//var count = 0
//let incrementer = {
//    count += 1
//}
//
//incrementer()
//incrementer()
//incrementer()
//incrementer()
//
//count


// Closure 추가 설명
// : 함수는 closure의 한 가지 타입이다.
// : 크게 3가지 타입이 있는데, Global 함수, Nested 함수, Closure Expressions.
// : 함수와 공통점과 차이점이 있다!
// - Global 함수와 Closure의 차이점 : global은 이름이 있고 closure는 이름이 없다. / global: func 키워드가 필요하고 closure: func 키워드 필요 없다.
// - Global 함수와 Closure의 공통점 : 인자를 받을 수 있다. / 값 리턴할 수 있다. / 변수로 할당할 수 있다. / First Class Type이다.
// -> First Class Type이란, 위의 공통점 특징을 갖는 타입을 일컫는다.
// Closure가 실무에서 자주 쓰이는 형태? -> Completion Block, Highter Order Functions
// Completion Block : 어떤 Task가 완료되었을 때, Closure가 수행되면서 자주 쓰인다. ex) 네트워크에서 데이터를 받아올 때, 언제 끝날지 모르겠지만 비동기적으로 사용할 때, 데이터 다운이 완료되었을 때, 데이터를 뿌려주는 코드 블록 자체를 수행시킬 때 closure를 사용한다. 뭔가 끝났을 때 돌아가야 하는 블록.
// Highter Order Function : input으로 함수를 받을 수 있는 function, 곡예 함수 라고도 한다. 이 함수를 사용할 때, 그 자리에서 함수를 만들어서 사용하기도 하는데, 이 때 closure를 많이 사용한다. ex) collection에서 많이 사용하는 filter, map 이런 것들을 곡예함수 라고 한다.

// Closure Syntax 설명
// { (parameter) -> return type in
//     statements
//     ...
// }
// Example 1: Cho Simple Closure

//let choSimpleClosure = {
//
//}
//
//choSimpleClosure()


// Example 2: 코드블록을 구현한 Closure

//let choSimpleClosure = {
//    print("Hello, 클로져, 코로나 주거 진짜 언제쯤 사라지냐?")
//}
//
//choSimpleClosure()


// Example 3: 인풋 파라미터를 받는 Closure

//let choSimpleClosure: (String) -> Void = { day in
//    print("Hello, 클로져, 코로나 주거 진짜 언제쯤 사라지냐? \(day)에 사라질게요.")
//}
//
//choSimpleClosure("2021/09")

// Example 4: 값을 리턴하는 Closure

//let choSimpleClosure: (String) -> String = { name in
//    let message = "iOS 개발 만만세, \(name) 님 경제적 자유를 얻으실 거에요!"
//    return message
//}
//
//let result = choSimpleClosure("코로나 좀 꺼져")
//
//print(result)

// Example 5: Closure를 input 파라미터로 받는 함수 구현

//func someSimpleFunction(choSimpleClosure: () -> Void) {
//    print("함수에서 호출이 되었어요.")
//    choSimpleClosure()
//}
//
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 코로나 from closure.")
//})

// Example 6: Trailing Closure

//func someSimpleFunction(message: String, choSimpleClosure: () -> Void) {
//    print("함수에서 호출이 되었어요, 메세지는 \(message)")
//    choSimpleClosure()
//}
//
//someSimpleFunction(message: "코로나 저리가", choSimpleClosure: {
//    print("코로나 진짜 꺼지라고 했다")
//})
//
//// = 두 함수 같게 출력되기 때문에 더 편한 걸로 사용하면 된다. 
//
//someSimpleFunction(message: "가라고 코로나") {
//    print("꺼져 꺼지란 말이야!!")
//}

