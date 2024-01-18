import UIKit


// DRY: Don't repeat yourself


// Define
func greet(firstName: String, lastName: String) -> Void {
    print("Hey \(firstName) \(lastName)")
}


// Invoke

greet(firstName: "Bennett", lastName: "Lee")
greet(firstName: "John", lastName: "Smith")

// Omit argument labels
//func add(_ firstNumber: Int, _ secondNumber: Int){
//    let result = firstNumber + secondNumber
//    print("The result is \(result)")
//}

// Define custom argument labels
func add(_ firstNumber: Int, with secondNumber: Int) {
    let result = firstNumber + secondNumber
    print("The result is \(result)")
}

add(10, with: 20)



// Variadic parameters

func sum(_ numbers: Int...) -> Int {
    var result = 0

    for number in numbers {
        result += number
    }

    print("result \(result)")
    return result
}

let resultOfSum = sum(1,2,3,5,7,8,10)
print(resultOfSum)


// Status Code: 200
// Status Label: "Ok"
func makeNetworkRequest() -> (Int, String) {
    return (200, "Ok")
}

let networkResponse = makeNetworkRequest()
networkResponse.0
networkResponse.1


// Classes / Structure

struct Person {

    static var numberOfPeople = 0

    // Definition
    
    // Properties - data
    let firstName: String
    let lastName: String
    let age: Int

    // Methods - behavior
    func greet() {
        print("Hello my name is \(firstName) and my age is \(age)")
    }

    // Initializers
    // Memberwise initalizer
    // comes out of the box!!
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age

        Person.numberOfPeople += 1
    }
}

let john = Person(firstName: "John", lastName: "Smith", age: 30)

let amy = Person(firstName: "Amy", lastName: "Smith", age: 30)

print("Total number of people \(Person.numberOfPeople)")

john.firstName
john.greet()

struct Rectangle {
    // Stored properties
    var width: Double
    let height: Double

    // Computed properties
    var area: Double {
        width * height
    }
}

let rect = Rectangle(width: 20, height: 30)

var anotherShape = rect
anotherShape.width = 200


rect.width





class Student {
    // Properties
    var firstName: String

    // Methods
    func greet(){
        print("Hey i'm \(firstName)")
    }

    // Initalizer
    init(firstName: String) {
        self.firstName = firstName
    }


}

// Class
let sam = Student(firstName: "Sam")


// Very deep in our call stack, some other file
let anotherPerson = sam
anotherPerson.firstName = "Bob"

sam.firstName

// Access Controls

// Principle of least privlege


