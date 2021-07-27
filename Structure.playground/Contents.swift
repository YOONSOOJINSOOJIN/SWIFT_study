import UIKit

// 1. Structure
// : 값을 저장할 때, 서로 관계가 있는 값들을 관리하거나 한꺼번에 표현하고 싶을 때 structure로 해결할 수 있다.
// : 관계가 있는 것들을 묶어서 표현한다. object = data + method
// - Structure vs Class
// - structure: value type, copy (stack)
// - class: reference type, share (heap)
// 각 stack과 heap의 차이로 공간의 차이가 있기 때문에 동작에도 차이가 있다.


//// 맨처음 시작시....
//
//// 문제: 가장 가까운 편의점 찾기
//
//// 주어진 편의점 정보
//let store1 = (x: 3, y: 5, name: "gs")
//let store2 = (x: 4, y: 6, name: "seven")
//let store3 = (x: 1, y: 7, name: "cu")
//
//
//// 거리 구하는 함수
//func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
//    // 피타고라스..
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}
//
//
//// 가장 가까운 편의점 프린트하는 함수
//func printClosestStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//
//    for store in stores {
//        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore {
//            closestStoreName = store.name
//        }
//    }
//    print("Closest store: \(closestStoreName)")
//}
//
//// Stores Array 세팅, 현재 내 위치 세팅
//
//let myLocation = (x: 2, y: 2)
//let stores = [store1, store2, store3]
//
//// printClosestStore 함수이용해서 현재 가장 가까운 스토어 출력하기
//printClosestStore(currentLocation: myLocation, stores: stores)



// Improve Code
// - make Location struct
// - make Store struct




//// 완료 내용
//
//// Given distance func
//func distance(current: Location, target: Location) -> Double {
//    // 피타고라스..
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}
//
//
//struct Location {
//    let x: Int
//    let y: Int
//}
//
//struct Store {
//    let loc: Location
//    var name: String
//    let deliveryRange = 2.0
//
//    func isDeliverable(userLoc: Location) -> Bool {
//        let distanceToStore = distance(current: userLoc, target: loc)
//        return distanceToStore < deliveryRange
//    }
//}
//
//// Given stores
//let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
//let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
//let store3 = Store(loc: Location(x: 1, y: 7), name: "cu")
//
//
//// Given printClosestStore func
//func printClosestStore(currentLocation: Location, stores: [Store]) {
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//    var isDeliverable = false
//
//    for store in stores {
//        let distanceToStore = distance(current: currentLocation, target: store.loc)
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore {
//            closestStoreName = store.name
//            isDeliverable = store.isDeliverable(userLoc: currentLocation)
//        }
//    }
//    print("Closest store: \(closestStoreName) deliverable: \(isDeliverable)")
//}
//
//// Set stores and myLocation
//let stores = [store1, store2, store3]
//let myLocation = Location(x: 2, y: 5)
//
//
//// Use printClosestStore func to print
//printClosestStore(currentLocation: myLocation, stores: stores)



//// Improve Code
//// - make Location struct
//// - make Store struct
//
//
//
//
//
//
//
//
//
// --- Class vs. Structure 동작 차이 알아보기

//class PersonClass {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//
//struct PersonStruct {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//
//// class는 share 개념이기에 하나가 바뀌면 같이 공유하여 동기화된다.
//let pClass1 = PersonClass(name: "Jason", age: 5)
//let pClass2 = pClass1
//pClass2.name = "Hey"
//
//pClass1.name
//pClass2.name
//
//
//// structure는 copy 개념이기에 원본은 바뀌지 않는다.
//var pStruct1 = PersonStruct(name: "Jason", age: 5)
//var pStruct2 = pStruct1
//pStruct2.name = "Hey"
//
//pStruct1.name
//pStruct2.name

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Structure 만들기 (Lecture)
//struct LectureStructure {
//    var LectureName: String
//    var InstructorName: String
//    var StudentNum: Int
//}
//
//// 2. 강의 어레이와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
//
//func printLecture(from instructorName: String, lectures: [LectureStructure]) {
//    var lectureName = ""
//
//    for lecture in lectures {
//        if instructorName == lecture.InstructorName {
//            lectureName = lecture.LectureName
//        }
//    }
//
//    print("아 그 강사님 강의는요: \(lectureName)")
//
//}
//// 3. 강의 3개 만들고 강사이름으로 강의 찾기
//let lec1 = LectureStructure(LectureName: "math study", InstructorName: "yoon", StudentNum: 5)
//let lec2 = LectureStructure(LectureName: "english study", InstructorName: "soo", StudentNum: 3)
//let lec3 = LectureStructure(LectureName: "coding study", InstructorName: "jin", StudentNum: 7)
//
//printLecture(from: "jin", lectures: [lec1, lec2, lec3])


// closure 사용한 함수. 위의 함수를 줄인 예. 사실 위의 함수가 더욱 보기 쉬움.

//func printLecture(from instructorName: String, lectures: [LectureStructure]) {
//
//    let lectureName = lectures.first { (lec) -> Bool in
//        return lec.InstructorName == instructorName
//    }?.LectureName ?? ""
//
//
//    print("아 그 강사님 강의는요: \(lectureName)")
//
//}
//
//let lec1 = LectureStructure(LectureName: "math study", InstructorName: "yoon", StudentNum: 5)
//let lec2 = LectureStructure(LectureName: "english study", InstructorName: "soo", StudentNum: 3)
//let lec3 = LectureStructure(LectureName: "coding study", InstructorName: "jin", StudentNum: 7)
//
//printLecture(from: "jin", lectures: [lec1, lec2, lec3])


// 2. Protocol
// : 규약. 지켜야 할 약속.
// : 어느 서비스를 이용할 때, 해야할 일의 목록


// CustomStringConvertible

//struct Lecture: CustomStringConvertible {
//    var description: String {
//        return "Title: \(name), Instruction: \(instructor)"
//    }
//    let name: String
//    let instructor: String
//    let numOfStudent: Int
//
//}
//
//
//func printLecture(from instructorName: String, lectures: [Lecture]) {
//    var lectureName = ""
//
//    for lecture in lectures {
//        if instructorName == lecture.instructor {
//            lectureName = lecture.name
//        }
//    }
//
//    print("아 그 강사님 강의는요: \(lectureName)")
//
//}
//// 3. 강의 3개 만들고 강사이름으로 강의 찾기
//let lec1 = Lecture(name: "math study", instructor: "yoon", numOfStudent: 5)
//let lec2 = Lecture(name: "english study", instructor: "soo", numOfStudent: 3)
//let lec3 = Lecture(name: "coding study", instructor: "jin", numOfStudent: 7)
//
//printLecture(from: "jin", lectures: [lec1, lec2, lec3])
//print(lec1) // custom을 썼을 때 -> Title: math study, Instruction: yoon
//print(lec1) // custom을 안 썼을 때 -> Lecture(name: "math study", instructor: "yoon", numOfStudent: 5)

// 3. Object = data + method

//struct Store {
//    // 데이터
//    let loc: Location
//    var name: String
//    let deliveryRange = 2.0
//
//    // 메소드
//    func isDeliverable(userLoc: Location) -> Bool {
//        let distanceToStore = distance(current: userLoc, target: loc)
//        return distanceToStore < deliveryRange
//    }
//}


// 3_1. Data (= Properties)
// : (Stored property - 저장된 프로퍼티, Computed property - 어떤 값을 저장된 정보를 이용해 가공 혹은 계산된 값 제공하는 프로퍼티)

//struct Lecture: CustomStringConvertible {
     // computed property
//    var description: String {
//        return "Title: \(name), Instruction: \(instructor)"
//    }
     // stored property
//    let name: String
//    let instructor: String
//    let numOfStudent: Int
//
//}

//struct Person {
//    var firstName: String {
//        // 이들을 통해 재사용성을 높일 수 있다.
//
//        // didset과 willset을 통해 변경 이력을 알 수 있다.
////        willSet {
////            print("willSet: \(firstName) --> \(newValue)")
////        }
//
//        // didset은 stored property 에서만 가능하다.
//        didSet {
//            print("didSet: \(oldValue) --> \(firstName)")
//        }
//    }
//    var lastName: String
//
//
//    lazy var isPopular: Bool = {
//        if fullName == "Jay Park" {
//            return true
//        }
//        else {
//            return false
//        }
//    }()
//
//
//    var fullName: String {
//        get {
//            return "\(firstName) \(lastName)"
//        }
//
//        set {
//
//            // newValue "Jay Park"
//
//            if let firstName = newValue.components(separatedBy: " ").first {
//                self.firstName = firstName
//            }
//
//            if let lastName = newValue.components(separatedBy: " ").last {
//                self.lastName = lastName
//            }
//        }
//
//    }
//
//    static let isAlien: Bool = false
//
//}
//// 사실 실무에서는 let을 많이 쓰려고 한다. var로 정의하면 변수들이 바뀌는 것에서 버그가 날 수 있기 때문이다.
//
//var person = Person(firstName: "Cathy", lastName: "Yoon")
//
//person.firstName
//person.lastName
//
//person.firstName = "Billie"
//person.lastName = "Yoon"
//
//person.firstName
//person.lastName
//
//person.fullName
//person.fullName = "Jay Park"
//person.firstName
//person.lastName
//
//
//Person.isAlien
//
//person.isPopular

// 4. property vs method
// fullName 변수를 보면,

// 둘 다 같은 일을 하고 가능한 방향이다.
// 그런데, 뭐가 더 좋은 방법인지 모르겠다!
// 사실 property = 호출 시, 저장된 값을 하나 반환한다.
// method = 호출 시, 어떤 작업을 한다. 근데 만약 method가 그냥 값을 리턴하는 작업을 한다면? computed property랑 비슷하지 않느냐
// 그러나 이렇게 생각해보자. Setter가 필요한가? Yes-property, No-method. 계산이 필요한가? or DB access나 File io가 필요한가? Yes-method, No-computed property
// 그렇게 생각하면, 간단한 작업은 property를 쓰는 게 맞다.
//var fullName:String {
//    return "\(firstName) \(lastName)"
//}
//
//func fullName() -> String {
//    return "\(firstName) \(lastName)"
//}

// 5. method

//struct Lecture {
//    var title: String
//    var maxStudents: Int = 10
//    var numOfRegistered: Int = 0
//    
//    mutating func remainSeats() -> Int {
//        let remainSeats = maxStudents - numOfRegistered
//        return remainSeats
//    }
//    
//    // 이 메소드를 실행시켰을 때, 이 struct의 property를 변형시키는구나 라고 시스템이 발견해서 에러를 띄우므로 "mutating"을 붙여줘야 함.
//    mutating func register() {
//        // 등록된 학생수 증가시키기
//        numOfRegistered += 1
//    }
//    static let target: String = "Anybody want to learn something"
//    
//    static func 소속학원이름() -> String {
//        return "패캠"
//    }
//}
//
//var lec = Lecture(title: "iOS Basic")
//
//lec.remainSeats()
//
//lec.register()
//lec.register()
//// 등록하는대로 남은 자리 수가 줄어듦.
//lec.remainSeats()
//
//Lecture.target
//Lecture.소속학원이름()
//
//// 5_1. 메소드 확장
//// : struct 선언부에 넣는 게 깔끔하지만! 메소드가 추가될 때마다 다시 넣고 넣는다면 충돌날 수도 있기 때문에 extension을 사용한다고 한다.
//// 근데 복잡한 메소드 아니면 클린 코드를 위해 안 쓰는 게 편할 것 같기도 하다...ㅎ
//struct Math {
//    static func abs(value: Int) -> Int {
//        if value > 0 {
//            return value
//        }
//        else {
//            return -value
//        }
//    }
//}
//
//Math.abs(value: -20)
//
//// 제곱, 반값
//// math 메소드를 확장하겠다면 extension을 사용.
//extension Math {
//    static func square(value: Int) -> Int {
//        return value * value
//    }
//    static func half(value: Int) -> Int {
//        return value/2
//    }
//}
//
//Math.square(value: 10)
//Math.half(value: 6)
//
//var value: Int = 20
//// 제곱, 반값
//
//extension Int {
//    func square() -> Int {
//        return self * self
//    }
//    func half() -> Int {
//        return self/2
//    }
//}
//
//value.square()
//value.half()
