import UIKit

// Write a function that takes in an array of strings. Print all the plural strings that end in 's'

func regularPluralNounsCount(_ arr: [String]) {
    print(arr.filter { $0.last == "s"})
}


regularPluralNounsCount(["Words", "word", "boy", "boys"])
