import UIKit
import Foundation

// Write a method, that will get an integer array as parameter and will process every number from this array.
// Return a new array with processing every number of the input-array like this:
// If the number has an integer square root, take this, otherwise square the number.
// Example
// [4,3,9,7,2,1] -> [2,9,3,49,4,1]
// Notes
// The input array will always contain only positive numbers, and will never be empty or null.

func squareRootOrSquare(in numbers: [Int]) -> [Int] {
    var result: [Int] = []

    for number in numbers {
        let sqrtOfNumber = sqrt(Double(number))
        if sqrtOfNumber.truncatingRemainder(dividingBy: 1) == 0 { // couldn't use sqrtOfNumber % 1 == 0 on a double
            result.append(Int(sqrtOfNumber))
        } else {
            result.append(number * number)
        }
    }
    return result
}

print(squareRootOrSquare(in: [4, 3, 9, 7, 2, 1]))
