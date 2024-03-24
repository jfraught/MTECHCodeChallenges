import UIKit

// Factorial

// Create a function that takes in an Int as input and returns the factorial of that number

// 0! = 1
// 1! = 1
// 2! = 1 * 2 = 2
// 3! = 1 * 2 * 3 = 6
// 4! = 1 * 2 * 3 * 4 = 24

func factorial(_ num: Int) -> Int {
    if num < 1 {
        return 1
    } else {
        return num * factorial(num - 1)
        // 3 * factorial(2) * factorial(1) 
    }
}

print(factorial(0))
print(factorial(1))
print(factorial(2))
print(factorial(3))
print(factorial(4))
print(factorial(5))
