import UIKit

/* Write a function that takes a string as the input argument and returns a formatted phone number string, or throws if the string that was passed in is not a valid phone number.

For this code challenge a valid phone number is a 10 digit US phone number and the input could be any of: "111-111-1111" "2222222222" "(333) 333-3333" and other variations that do not include letters and other invalid characters.

The format for the phone number returned should be "xxx-xxx-xxxx" */

func formatPhoneNumber(from numberString: String) -> String {
    let numberString = numberString.filter {
        $0.isNumber
    }

    guard numberString.count == 10 else { return "Not a valid number" }

    var result = ""

    for (i, char) in numberString.enumerated() {
        if i == 3 || i == 6 {
            result += "-"
            result += String(char)
        } else {
            result += String(char)
        }
    }

    return result
}

print(formatPhoneNumber(from: "8013617770"))
print(formatPhoneNumber(from: "8O1-361-7770"))
print(formatPhoneNumber(from: "(801) 361-7770"))

