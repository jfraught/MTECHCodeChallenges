import UIKit

let color = "blue"
let number = 50
let letter = "a"

// Create an if statement that checks to see if the color variable is "blue" If it is then print "That is my favorite color!"
// If the color is not "blue" then print "Cool!"
// Only one of the print statements should print when you run your code. NOT BOTH.

if color == "blue" {
    print("That is my favorite color!")
} else {
    print("Cool!")
}

// Check to see if the number variable is between 1 and 100. If it is print "That is a valid number
// If it is not between 1 and 100 print "That is NOT a valid number"

switch number {
case 1...100:
    print("That is a valid number")
default:
    print("That is not a valid number")
}

// Create a switch statement to check if letter is a vowel. If it is then print "letter is a vowel!"
// If it is not a vowel then print "letter is a consonant"
switch letter {
case "a", "e", "i", "o", "u":
    print("That letter is a vowel!")
default:
    print("That letter is a consonant")
}
