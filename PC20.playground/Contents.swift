import UIKit

// 3n + 1 Problem (Collatz Conjecture) Part 1

// A Collatz sequence is generated by repeatedly applying the following rules to an integer and then to each resulting integer in turn:
// If even: divide by 2.
// If odd: multiply by 3, then add 1.
// The Collatz algorithm has been tested and found to always reach 1 for all positive integers.

// Task: Create a recursive function that returns a string that can be printed out to see the Collatz Conjecture of the given integar

func collatz(_ num: Int) -> Int {
    print(num)
    if num == 1 {
        return num
    }
    
    if num.isMultiple(of: 2) {
        return collatz(num / 2)
    } else {
        return collatz(num * 3 + 1)
    }
}

// Examples
//
collatz(10)
// 1: 10
// 2: 5
// 3: 16
// 4: 8
// 5: 4
// 6: 2
// 7: 1
//
 collatz(15)
// 1: 15
// 2: 46
// 3: 23
// 4: 70
// 5: 35
// 6: 106
// 7: 53
// 8: 160
// 9: 80
// 10: 40
// 11: 20
// 12: 10
// 13: 5
// 14: 16
// 15: 8
// 16: 4
// 17: 2
// 18: 1








