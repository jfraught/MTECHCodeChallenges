import UIKit

// Write a function that takes in an array of Int's
// The function will not return anything
// Loop through the array. If the number is even print "num: Even" If the number is odd print "num: Odd"
// num should be replaced with the number.
//ex. Input -> [1,2,3]
// Output -> "1: Odd"
//           "2: Even"
//           "3: Odd"

func evenOrOdd(numbers: [Int]) {
    for number in numbers {
        if number.isMultiple(of: 2) {
            print("\(number): Even")
        } else {
            print("\(number): Odd")
        }
    }
}

evenOrOdd(numbers: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
