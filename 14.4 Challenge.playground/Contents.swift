import UIKit

// Implement a function that determines if the given string is a digit 0-9

// Black diamond: Use a regular expression

func isDigit(_ str: String) -> Bool {
    str.range(of: "^[0-9]", options: .regularExpression) != nil
}

print(isDigit("O"))
print(isDigit("3"))
