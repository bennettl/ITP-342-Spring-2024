import UIKit


// Rule 1: Variables / constants can't be nil
//
//var name : String = nil
//print(name)

// Rule 2: Ok, if you want to have a variable that can potentially be nil, then you need to wrap it in a an Optional type

//var name : Optional<String> = "Bennett"
var name : String? = "Bennett"
print(name)

// How do we access the underlying data of an optional
// 1. Force unwrapping
// 2. Implicitly unwrapped optional
// 3. Conditional binding
// 4. Nil colaescing operator

// 1. Force unwrapping
// Easiest, HOWVEVER ⚠️, this is the also the most dangerous way
//print(name!)

// 2. Implicitly unwrapped optional
var lastName: String! = "Lee"

print(lastName)
print(lastName)
print(lastName)

// 3. Conditional binding
// Using an if statement, if the value exists, use it, else ignore and continue on
name = nil
if let nameValue = name {
    print(nameValue)
}

// Synatic sugar for conditional binding
if let name {
    print(name)
}

// 4. Nil collacsing operator
//var greeting = "Hello, "
//if let name {
//    greeting += name
//} else {
//    greeting += "there"
//}

let greeting = "Hello, \(lastName ?? "there")"
print(greeting)

