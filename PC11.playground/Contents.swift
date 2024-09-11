import UIKit

// The additive persistence of an integer, n, is the number of times you have to replace n with the sum of its digits until n becomes a single digit integer.

// Create a function that take an integer as an argument and:

// Return its additive persistence.

// Examples: Additive Persistence
// additivePersistence(1679583) ➞ 3
// 1 + 6 + 7 + 9 + 5 + 8 + 3 = 39
// 3 + 9 = 12
// 1 + 2 = 3
// It takes 3 iterations to reach a single-digit number.

// additivePersistence(123456) ➞ 3
// 1 + 2 + 3 + 4 + 5 + 6 = 21
// 2 + 1 = 3

// additivePersistence(6) ➞ 0
// Because 6 is already a single-digit integer.

func additivePersistence(_ n: Int) -> Int {
    guard n > 9 else { return 0 }
    var result = n
    
    while result > 9 {
        result = String(describing: result).compactMap { Int(String($0)) }.reduce(0, +)
    }
    
    return result
}

additivePersistence(1679583)
additivePersistence(123456)
additivePersistence(6)
