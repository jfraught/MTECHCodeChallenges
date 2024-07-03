//  🏔️ MTECH Code Challenge SD03: "camelCase & snake_case" 🐫🐍
//  Concept: Practice using a string as a collection, evaluating and modifying it as needed

//  Instructions:
    //  Create two functions toCamelCase() and toSnakeCase() that each take a single string and convert it into either camelCase or snake_case. If you're not sure what these terms mean, google it.

//  Notes:
    //  You can assume that the input will always be appropriately formatted as either camelCase or snake_case, depending on the function being called.

//  Examples:
    //  Input: toCamelCase("hello_edabit"), Output: "helloEdabit"
    //  Input: toSnakeCase("helloEdabit"), Output: "hello_edabit"
    //  Input: toCamelCase("is_modal_open"), Output: "isModalOpen"
    //  Input: toSnakeCase("getColor"), Output: "get_color"

//  ⌺ Black Diamond Challenge:
    //  Write another function that can identify whether a String is in camelCase or snake_case; use that function to sanitize your input to the other two functions.
    //  Write two more functions that convert a string into PascalCase and kebab-case, respectively.

import Foundation

func toCamelCase(_ snakeCaseWord: String) -> String {
    let words = snakeCaseWord.components(separatedBy: "_")
    var result = ""
    
    for (i, word) in words.enumerated() {
        if i == 0 {
            result += word
        } else {
            result += word.capitalized
        }
    }
    
    return result
}

func toSnakeCase(_ camelCaseWord: String) -> String {
    var currentWord = ""
    var words: [String] = []
    var result = ""
    
    for (i, char) in camelCaseWord.enumerated() {
        if char.isUppercase {
            words.append(currentWord)
            currentWord = "_"
            currentWord += char.lowercased()
        } else if i == camelCaseWord.count - 1 {
            currentWord += String(char)
            words.append(currentWord)
        } else {
            currentWord += String(char)
        }
    }

    for word in words {
        result += word
    }
    
    return result
}

toCamelCase("hello_edabit")
toSnakeCase("helloEdabit")
toCamelCase("is_modal_open")
toSnakeCase("getColor")

