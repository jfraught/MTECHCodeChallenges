import UIKit
// Complete the function that takes two integers (a, b, where a < b) and return an array of all integers between the input parameters, including them.

// For example:

// a = 1
// b = 4
// --> [1, 2, 3, 4]

// Black Diamond: Only return numbers that are divisible by a.

func range(between a: Int, and b: Int) -> [Int] {
    guard a < b else { return [0] }
    
    return Array(a...b).filter { $0 % a == 0 }
}

range(between: 2, and: 10)
