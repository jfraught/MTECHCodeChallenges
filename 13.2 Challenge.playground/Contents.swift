import UIKit

// Your coworker was supposed to write a simple helper function to capitalize a string (that contains a single word) before they went on vacation.

// Unfortunately, they have now left and the code they gave you doesn't work. Fix the helper function they wrote so that it works as intended (i.e. make the first character in the string "word" upper case).

func capitalizeWord(word: String) -> String {
//    word.capitalized
    var wordArr = word.map { String($0) }
    wordArr[0] = wordArr[0].uppercased()
    return wordArr.joined()
}

capitalizeWord(word: "test")
