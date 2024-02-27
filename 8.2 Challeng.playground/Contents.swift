import UIKit

// Alphabetically reverse sort an array of strings. So ["Bob", "Jill", "Sally"] returns ["Sally", "Jill", "Bob"] or ["Vern", "Gidget", "Zeb"] returns ["Vern", "Gidget", "Zeb"]

func reverseSort(_ strings: [String]) -> [String] {
    strings.sorted(by: >)
}

print(reverseSort(["Bob", "Jill", "Sally"]))
print(reverseSort(["Vern", "Gidget", "Zeb"]))

//Buble Sort

func bubbleSort(nums: [Int]) -> [Int] {
    var myNums = nums

    for (i, _) in myNums.enumerated() {
        let stop = myNums.count - i
        for (j, _) in myNums.enumerated() {
            if (stop == j || j == myNums.count - 1) {
                break
            }
            if (myNums[j] > myNums[j + 1]) {
                let temp = myNums[j + 1]
                myNums[j + 1] = myNums[j]
                myNums[j] = temp
            }
        }
    }

    return myNums
}
