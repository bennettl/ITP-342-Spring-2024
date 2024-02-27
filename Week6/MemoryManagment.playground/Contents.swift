import UIKit

var greeting = "Hello, playground"

// Strong reference cycle
// john -> object
// object -> closure
// closure -> object
//
//class Person {
//
//    var name: String
//
//    var changeName = () -> { [weak self] in
//        self?.name = "Kyle"
//    }
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//
//var john = Person(name: "John")
//john.name
//john = nil
//
//
//// Definition - Closure
//let sum: (Int, Int) -> Int = { x, y in
//    return x + y
//}
//
//// Function
//func subtract(x: Int, y: Int) -> Int {
//    return x - y
//}
//
//// Invoking
//sum(20, 30)
//subtract(x: 10, y: 20)
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//// structures and constants by default
//// classes and variables by exception
//
//// x  10

for i in 1..<10 {
    print("Hello")
}












