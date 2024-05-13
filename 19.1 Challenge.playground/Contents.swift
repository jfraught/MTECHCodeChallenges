import UIKit

// Write a function that takes an array of numbers, returns a [Character: [Int]] dictionary.
// For each number in the input array, check if it is an ASCII values for a lowercase vowel (a, e, i, o, u).
// If it is, add the index of that value to an array in a dictionary where vowels are the keys.
//
// Return the resulting dictionary which can now be used to get the locations of all the vowels in the input array.
//
// Hint: https://www.asciitable.com/
// https://stackoverflow.com/questions/24354549/how-to-get-string-from-ascii-code-in-swift

func vowelsIndex(in ints: [Int]) -> [Character: [Int]] {
    var results: [Character: [Int]] = ["a": [], "e": [], "i": [], "o": [], "u": []]
    var vowels: [Character] = ["a", "e", "i", "o", "u"]
    var vowelsAsciiValues = vowels.map { $0.asciiValue ?? 0 }
    
    for (index, int) in ints.enumerated() {
        if int == vowelsAsciiValues[0] {
            results["a"]?.append(index)
        } else if int == vowelsAsciiValues[1] {
            results["e"]?.append(index)
        } else if int == vowelsAsciiValues[2] {
            results["i"]?.append(index)
        } else if int == vowelsAsciiValues[3] {
            results["o"]?.append(index)
        } else if int == vowelsAsciiValues[4] {
            results["u"]?.append(index)
        }
    }
    
    return results
}

let vowelsIndices = vowelsIndex(in: [117, 97, 0, 97, 101, 102, 105, 111, 112, 117])
print("A indices \(vowelsIndices["a"]!)")
print("E indices \(vowelsIndices["e"]!)")
print("I indices \(vowelsIndices["i"]!)")
print("O indices \(vowelsIndices["o"]!)")
print("U indices \(vowelsIndices["u"]!)")
