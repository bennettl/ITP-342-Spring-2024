import UIKit

var greeting = "Hello, playground"

print(greeting)

protocol Drivable {
    var name : String { get }
    func turnLeft()
    func turnRight()
    func honk()
}

struct Car : Drivable {
    let name: String

    func turnLeft() {
    }

    func turnRight() {
    }
    
    func honk() {
        print("honking from my \(name)")
    }
}

let mazda = Car(name: "Mazda")
mazda.name
mazda.honk()


extension Double {
    var squared: Double {
        return self * self
    }
}

10.0.squared

extension String {
    var trimmed: String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}


@propertyWrapper
struct Trimmed {
    var internalState: String = ""
    
    // The wrapped value represents the property we are wrapping
    // e.g. this gets called when we access firstName / lastName
    var wrappedValue: String {
        // Property observers
        get {
            internalState
        }
        set {
            internalState = newValue.trimmed
        }
    }
}

struct User {
    @Trimmed var firstName: String
    @Trimmed var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}



let eli = User(firstName: "Eli  ", lastName: "  Morris  ")
eli.firstName



// 1. Define the different types of error in your system
enum VendingMachineError: Error {
    case NoInventory
}

func orderDrink(count: Int) throws -> String {
    let inventory = 10

    // 2. To throw the error under the appropriate conditions
    if inventory < count {
        throw VendingMachineError.NoInventory
    }
    return ""
}

// 3. Handling
do {
    // code before
    let myDrink = try orderDrink(count: 10)
    // code after
    print("I got my drink \(myDrink)")
} catch {
    print(error)
}



