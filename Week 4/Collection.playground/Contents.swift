import Foundation

//let names: Array<String> = ["Bennett", "Tim", "Sarah", "Diego"]
//let names: [String] = ["Bennett", "Tim", "Sarah", "Diego"]
var names = ["Bennett", "Tim", "Sarah", "Diego"]

// Accessing elements
names[0]
names[1]

// For loop
for name in names {
    print("Name \(name)")
}

for (index, name) in names.enumerated() {
    print("\(index + 1) \(name)")
}

names[0] = "Kristina"


// Add
names.append("Jack")
print(names)

names.insert("Amy", at: 2)
print(names)

// Remove elements
names.remove(at: 2)

print(names)

names.count
names.isEmpty

// Empty array
//var emptyArray = [Int]()
//var emptyArray = Array<Int>()
//var emptyArray: [Int] = []

names.contains("John")


// Dictionaries
//let airports : Dictionary<String, String> = [
//    "JFK": "New York",
//    "LAX": "Los Angeles",
//    "SFO": "San Francisco"
//]

//let airports : [String : String] = [
//    "JFK": "New York",
//    "LAX": "Los Angeles",
//    "SFO": "San Francisco"
//]

var airports = [
    "JFK": "New York",
    "LAX": "Los Angeles",
    "SFO": "San Francisco"
]

// Accessing elements of a dictionary
let airport = airports["JFK"]

print(airport)

for (key, value) in airports {
    print("\(key): \(value)")
}

// Adding a key / value pair
airports["DTW"] = "Detroit"
print(airports)

airports["JFK"] = nil
print(airports)

