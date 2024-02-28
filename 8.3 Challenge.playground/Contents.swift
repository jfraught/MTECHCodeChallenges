import UIKit

// Sorting Algorithms - Insertion Sort

// Same as yesterday, you are not allowed to use the .sort() method

// Create a function that takes in an array of Ints. Sort the array using an insertion sort

// A visualization of what an insertion sort is can be seen here: https://en.wikipedia.org/wiki/Insertion_sort#/media/File:Insertion-sort-example-300px.gif

func insertionSort(in nums: [Int]) -> [Int] {
    var myNums = nums

    for (i, num) in nums.enumerated() {
        var j = i - 1

        while j >= 0 && nums[j] >= num {
            myNums[j + 1] = myNums[j]
            j = j - 1
        }
        myNums[j + 1] = num
    }

    return myNums
}

print(insertionSort(in: [3, 4, 5, 1, 1, 6]))

