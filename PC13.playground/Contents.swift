import UIKit

// Create a function that is a Hashtag Generator by using the following rules:

// The output must start with a hashtag (#).
// Each word in the output must have its first letter capitalized.
// If the final result, a single string, is longer than 140 characters, the function should return nil.
// If either the input (str) or the result is an empty string, the function should return nil.

// Examples
// generateHashtag("    Hello     World   " ) ➞ "#HelloWorld"

// generateHashtag("") ➞ nil, "Expected an empty string to return nil"

// generateHashtag("Coding is fun") ➞ "#CodingIsFun", "Should remove spaces and capitalize


func generateHashtag(from word: String) -> String? {
    guard !word.isEmpty || word.count > 139 else {
        return nil
    }
    
    let result = "#" + word.components(separatedBy: .whitespaces).map { $0.capitalized }.joined()
    
    return result
}

generateHashtag(from: "    Hello     World 12!  " )
generateHashtag(from: "")
generateHashtag(from: "Coding is fun")
