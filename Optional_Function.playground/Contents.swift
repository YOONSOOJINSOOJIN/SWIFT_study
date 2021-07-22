//import UIKit
//
//// 데이터 타입이 string 일수도 있고 없을 수도 있을 때 ?를 뒤에 붙여 준다.
//var Name: String? = "SUJIN"
//Name = nil
//Name = "jinjin"
//
//// 아주 간단한 과제
//// 1. 여러분이 최애하는 가수의 이름을 담는 변수를 작성해주세요 (타입 String?) 있을수도 있고 없을수도 있으니 ? 붙이는 것.
//
//var singerName: String?
//singerName = "NCT"
//
//
//// 2. let num = Int("10") -> 타입은 뭘까요? INT 형이라 생각한다.
//let num = Int("10") // let num: Int? = 사실 optional Int형인 것을 알 수 있다.
//
//
//// optional의 고급 기능 4가지
//
//// 1. Forced unwrapping (= 억지로 박스를 까보자)
//print(Name!) // value만 가져오기 위해 변수 뒤에 !를 붙여 출력시킨다.
//
//Name = nil
//print(Name!) // 값이 없는데 강제로 까려 하면 시스템 에러를 출력한다. (fatal error 출력된다!)
//
//// 2. Optional binding(if let) (= 부드럽게 박스를 까보자 1)
//if let unwrappedName = Name {
//    print(unwrappedName)
//} else {
//    print("Name 없다.")
//}
//
//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//            // Cyclomatic Complexity
//    } else {
//        print("Int로 컨버팅 안된단다..")
//    }
//}
//
//printParsedInt(from: "100")
//printParsedInt(from: "헬로우 마이네임이즈 수진")
//
//여행 계획표
//- 싱가폴
//- 싱가폴 맛집
//- 싱가폴 숙소
//
//여행 계획표
//- 싱가폴
//    - xxx
//    - xxx 만나고
//        - 친구 누구도 부르고
//- 싱가폴 맛집
//- 싱가폴 숙소
//
//-> 이런 식으로 depth가 깊어져 복잡해지면 실무에 적합하지 않다. 그래서 이러한 것들은 풀어줘야 한다.
//
//
//
// 3. Optional binding (guard) (= 부드럽게 박스를 까보자 2)
// # 위의 함수는 depth가 깊어 복잡하다고 판단된다. 그렇기 때문에 위의 함수를 간단하게 바꿔준다.
//func printParsedInt(from: String) {
//    guard let parsedInt = Int(from) else{
//        print("Int로 컨버팅 안된단다..")
//        return
//    }
//    print(parsedInt)
//}
//
//// guard 문을 이용하면 함수가 진행될 때 방어선을 치는 것, 괄호를 통과(true)하면 밑의 명령을 수행할 수 있는데 통과를 못하면 괄호 안의 명령을 수행하고 함수를 빠져나가 버린다.
//// 초기 조건을 미리 주고 판단 하에 실행.
//printParsedInt(from: "100")
//printParsedInt(from: "헬로우 마이네임이즈 수진")
//
//// 4. Nil coalescing (= 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자)
//var Name: String?
//Name = nil
//let myCarName: String = Name ?? "모델 s"
//
//
//// --- 도전 과제
//// 1. 최애 음식이름을 담는 변수를 작성하시고 (String?),
//// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
//// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?
//
//// 1. 답
//let myFavorite: String? = "까눌레"
//
//// 2. 답
//if let foodName = myFavorite {
//    print(foodName)
//} else {
//    print("좋아하는 음식 없음")
//}
//
//// 3. 답
//func printNickname(name: String?) {
//    guard let nickName = name else {
//        print("nickname 만들어 볼래??")
//        return
//    }
//    print(nickName)
//}
//
//printNickname(name: nil)
//
//
//
//
//
//
//
