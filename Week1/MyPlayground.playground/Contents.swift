import UIKit

// This is a comment

/**
This is a really long comment
 and more information

 */

// Character
"A"
"🔥"

// String
"Anything goes in here"

// Int
10
-10
0

// Float / Double (default)
12.5
67.8

// Boolean
true
false

// Constant (use by default)
let name : String = "Bennett"


// Variables (use in exceptional cases)
var number: Int = 42
number = 24

// Type inference
let lastName = "Lee"


let friendCount = 100

// String Interpolation
// Bennett has X friends
print("Bennett has \(friendCount + 10) friends")


switch number {
    case 42:
        print("The number is 42")
    case 43...50:
        print("The number is 43...50")
    default:
        ()
}

for index in 1...5 {
   print("\(index) times 5 is \(index * 5)")
}

var num = 0
while num < 5 {
    print("im still in the while loop")
    num += 1
}












