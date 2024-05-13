import UIKit

// Your Job
// Find the sum of all multiples of n below m

// Keep in Mind
// n and m are natural numbers (positive integers)
// m is excluded from the multiples

// Examples
// sumMul(2, 9)   ==> 2 + 4 + 6 + 8 = 20
// sumMul(3, 13)  ==> 3 + 6 + 9 + 12 = 30
// sumMul(4, 123) ==> 4 + 8 + 12 + ... = 1860
// sumMul(4, -7)  ==> nil

func sumMultiples(of x: Int, under n: Int) -> Int? {
    guard x <= n else { return nil }
    return (x..<n).filter { $0 % x == 0 }.reduce(0, +)
}

sumMultiples(of: 2, under: 9)
sumMultiples(of: 3, under: 13)
sumMultiples(of: 4, under: 123)
sumMultiples(of: 4, under: -7)
