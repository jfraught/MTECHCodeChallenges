import UIKit

// Write a function that tells how many times a given word occurs in a string. The function should take in a string and return a dictionary with the frequency of each word.

func numberOfOccurencnes(in str: String) -> [String: Int] {
    var results = [String: Int]()
    var words = str.split(separator: " ")

    for word in words {
        let wordStr = String(word)

        if let wordCount = results[wordStr] {
            results[wordStr] = wordCount + 1
        } else {
            results[wordStr] = 1
        }

    }

    return results
}

print(numberOfOccurencnes(in: "bob jill sally bob jill"))
