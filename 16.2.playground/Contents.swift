import UIKit

// Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

// Examples (Input -> Output):
// * "String"      -> "SSttrriinngg"
// * "Hello World" -> "HHeelllloo  WWoorrlldd"
// * "1234!_ "     -> "11223344!!__  "
// Good Luck!

func repeatCharacter(in string: String) -> String {
    string.map { String(repeating: $0, count: 2) }.joined()
}

repeatCharacter(in: "String")
repeatCharacter(in: "Hello World")
repeatCharacter(in: "1234!_ ")
