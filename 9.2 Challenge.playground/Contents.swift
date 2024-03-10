import UIKit

// Write a function that takes in two arrays of Strings.
// - This function should keep track of which elements in either array do not also appear in the other array.
// - Return a new array of those unique elements

func uniqueElements(in arrOne: [String], and arrTwo: [String]) -> [String] {
    // Array(Set(arrOne).symmetricDifference(Set(arrTwo))
    var result = [String]()

    for element in arrOne {
        if !arrTwo.contains(element) {
            result.append(element)
        }
    }

    for element in arrTwo {
        if !arrOne.contains(element) {
            result.append(element)
        }
    }

    return result
}

var arrayOne = ["Bob", "Jill", "Sally"]
var arrayTwo = ["Jim", "Jill", "Heather"]

print(uniqueElements(in: arrayOne, and: arrayTwo))
