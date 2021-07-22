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

class PersonClass {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


struct PersonStruct {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


// class는 share 개념이기에 하나가 바뀌면 같이 공유하여 동기화된다. 
let pClass1 = PersonClass(name: "Jason", age: 5)
let pClass2 = pClass1
pClass2.name = "Hey"

pClass1.name
pClass2.name


// structure는 copy 개념이기에 원본은 바뀌지 않는다.
var pStruct1 = PersonStruct(name: "Jason", age: 5)
var pStruct2 = pStruct1
pStruct2.name = "Hey"

pStruct1.name
pStruct2.name

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

struct LectureStructure {
    var LectureName: String
    var InstructorName: String
    var StudentNum: Int
}

func printLecture(from instructorName: String, lectures: [LectureStructure]) {
    var lectureName = ""

    for lecture in lectures {
        if instructorName == lecture.InstructorName {
            lectureName = lecture.LectureName
        }
    }

    print("아 그 강사님 강의는요: \(lectureName)")

}
// 3. 강의 3개 만들고 강사이름으로 강의 찾기
let lec1 = LectureStructure(LectureName: "math study", InstructorName: "yoon", StudentNum: 5)
let lec2 = LectureStructure(LectureName: "english study", InstructorName: "soo", StudentNum: 3)
let lec3 = LectureStructure(LectureName: "coding study", InstructorName: "jin", StudentNum: 7)

printLecture(from: "jin", lectures: [lec1, lec2, lec3])
