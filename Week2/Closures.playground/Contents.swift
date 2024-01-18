import UIKit

func sum(x: Int, y: Int) -> Int {
    return x + y
}

let doMath: (Int, Int) -> Int = sum

doMath(10, 20)


let name = "Bennett"

func alphabetize(string1: String, string2: String) -> Bool {
    return string1 < string2
}

func reverseAlphabetize(string1: String, string2: String) -> Bool {
    return string1 > string2
}

// Functional programming
var names = ["Bennett", "Sarah", "Andy"]

// This is referencing a named function
names.sort(by: alphabetize)

// This is referencing a anonymous function (closures)
// Create a function expression at the call site
names.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

// Type inference
names.sort(by: { (s1, s2) in
    return s1 < s2
})

// Implicit return
names.sort(by: { (s1, s2) in s1 < s2 })

// Shorthand argument label
names.sort(by: { $0 < $1 })

// Trailing closure
names.sort { $0 < $1 }


print(names)


