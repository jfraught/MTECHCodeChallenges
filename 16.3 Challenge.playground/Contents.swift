import UIKit

// Your task is to sum the differences between consecutive pairs in the array in descending order.

// Example
// [2, 1, 10]  -->  9
// In descending order: [10, 2, 1]

// Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9

// If the array is empty or the array has only one element the result should be 0

func sumOfDifferencesOfPairs(_ nums: [Int]) -> Int {
    var numsSorted = nums.sorted(by: >)
    var total = 0
    for (i, num) in numsSorted.enumerated() {
        if i < numsSorted.count - 1 {
            total += num - numsSorted[i + 1]
        }
    }
    
    return total
}

sumOfDifferencesOfPairs([2, 1, 10])
