import UIKit

// Sorting Algorithms - Selection Sort
// Same as yesterday, you are not allowed to use the built in .sort() method.
// Create a function that takes in an array of Ints. Sort that array using a selection sort.
// See this for a visual example of a selection sort: https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

func selectionSort(nums: [Int]) -> [Int] {
    var myNums = nums

    for (i, _) in myNums.enumerated() {
        var minIndex = i

        for j in i + 1..<myNums.count {
            if myNums[j] < myNums[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            let temp = myNums[minIndex]
            myNums[minIndex] = myNums[i]
            myNums[i] = temp
        }
    }

    return myNums
}

print(selectionSort(nums: [6,4,9,3,1,2,0,11]))
