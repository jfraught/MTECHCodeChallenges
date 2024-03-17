import UIKit

//Write a function that prints how many of each letter is in a string

func invivdualLetterCount(_ str: String) -> [Character: Int] {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var result = [Character: Int]()
    for char in alphabet {
        result[char] = 0
    }

    for char in str.lowercased() {
        if let letterCount = result[char] {
            result[char] = letterCount + 1
        }
    }

    return result
}

print(invivdualLetterCount("Harry Potter"))
