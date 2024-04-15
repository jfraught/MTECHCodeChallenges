import UIKit

// Task
// Sum all the numbers of a given array ( cq. list ), except the highest and the lowest element ( by value, not by index! ).

// The highest or lowest element respectively is a single element at each edge, even if there are more than one with the same value.

// Example
// { 6, 2, 1, 8, 10 } => 16
// { 1, 1, 11, 2, 3 } => 6

func sumMiddleElements(of nums: [Int]) -> Int {
    guard nums.count > 2 else { return 0 }
    var lowest = nums[0]
    var highest = lowest
    var total = 0
    for num in nums {
        if num < lowest {
            lowest = num
        } else if num > highest {
            highest = num
        } else {
            total += num
        }
    }

    return total - highest - lowest
}

sumMiddleElements(of: [6, 2, 1, 8, 10])
sumMiddleElements(of: [1, 1, 11, 2, 3])
