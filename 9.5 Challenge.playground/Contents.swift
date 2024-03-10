import UIKit

func numberOfSentences(in str: String) -> Int {
    var result = 0
    
    for (i, char) in str.enumerated() {
        if char == "!" || char == "." || char == "?" {
            if i == str.count - 1 {
                result += 1
            } else if str[str.index(str.startIndex, offsetBy: i + 1)] == " " {
                result += 1
            }
        }
    }

    return result
}

var threeSentences = "Hey there!! My name is Jordan.. What's your name???"

print(numberOfSentences(in: threeSentences))
