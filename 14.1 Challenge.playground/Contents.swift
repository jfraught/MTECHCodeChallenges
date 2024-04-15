import UIKit

// Complete the function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n ( inclusive ).
// Examples
// n = 0  ==> [1]        # [2^0]
// n = 1  ==> [1, 2]     # [2^0, 2^1]
// n = 2  ==> [1, 2, 4]  # [2^0, 2^1, 2^2]

func powerOfTwo(_ num: Int) -> [Int] {
    var result = [1]
    guard num > 0 else { return result }

    for i in 1...num {
        let numSquared = NSDecimalNumber(decimal: pow(2, i))
        result.append(Int(truncating: numSquared))
    }

    return result
}

print(powerOfTwo(0))
print(powerOfTwo(1))
print(powerOfTwo(2))
print(powerOfTwo(3))

