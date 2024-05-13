import UIKit

func rle(str: String) -> String {
    var count = 1
    var currentLetter: Character? = nil
    var result = ""
    
    for char in str {
        if currentLetter == char {
            count += 1
        } else {
            if let currentLetter {
                result += "\(currentLetter)\(count)"
            }
            
            currentLetter = char
            count = 1
        }
    }
    
    if let currentLetter {
        result += "\(currentLetter)\(count)"
    }
    
    return result
}

rle(str: "aabbcc")
