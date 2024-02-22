import UIKit

// Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

func replaceDigits(in string: String) -> String {
    var updatedString = ""

    for character in string {
        switch character {
        case "1", "2", "3", "4":
            updatedString += "0"
        case "5", "6", "7", "8", "9":
            updatedString += "1"
        default:
            print("\(character) is not a valid digit")
        }
    }
    return updatedString
}

print(replaceDigits(in: "123456789e"))

print("456".map({ Int("\($0)")! > 4 ? "1" : "0" }).joined())
