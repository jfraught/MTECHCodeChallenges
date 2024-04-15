import UIKit

// When provided with a letter, return its position in the alphabet.

// Input :: "a"

// Ouput :: "Position of alphabet: 1"



func positionInAlphabet(of letter: String) -> Int? {
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    // could loop through alphabet array and return plus one to index of letter == alphabet[i]
    if let index = alphabet.firstIndex(of: letter.lowercased()) {
        return index + 1
    } else {
        return nil
    }
}

print(positionInAlphabet(of: "a"))
