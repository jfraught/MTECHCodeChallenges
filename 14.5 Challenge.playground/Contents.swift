import UIKit

// Create a function close_compare that accepts 3 parameters: a, b, and an optional margin. The function should return whether a is lower than, close to, or higher than b.

// a is considered "close to" b if margin is greater than or equal to the distance between a and b.

// Please note the following:

// When a is close to b, return 0.
// Otherwise...

// When a is less than b, return -1.

// When a is greater than b, return 1.

// If margin is not given, treat it as zero.

// Assume: margin >= 0

func closeCompare(a: Int, b: Int, margin: Int = 0) -> Int {
    if abs(a - b) <= margin {
        return 0
    } else if a < b {
        return -1
    } else {
        return 1
    }
}

closeCompare(a: 1, b: 3, margin: 2)
