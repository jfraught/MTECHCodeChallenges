import UIKit


let name = "Jordan"
let age = 29

// Print a string introducing the user using the "name" and "age" variables. Use string interpolation
print("Hey, \(name). You'll be \(age + 1) this year!")

// Create a function that takes in a word as a String. The function will return the number of letters in the string as an Int.

func letterCount(word: String) -> Int {
    Int(word.count)
}
print(letterCount(word: "12345"))
//Create a function that takes in two Ints. The function will return the two Int's added together.
func add(x: Int, y: Int) {
    x + y
}
add(x: 3, y: 13)
