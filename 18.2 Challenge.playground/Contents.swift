import UIKit

// Description:
// Remove an exclamation mark from the end of a string. You can assume that the input data is always a string, no need to verify it.

// Examples
// remove("Hi!") === "Hi"
// remove("Hi!!!") === "Hi!!"
// remove("!Hi") === "!Hi"
// remove("!Hi!") === "!Hi"
// remove("Hi! Hi!") === "Hi! Hi"
// remove("Hi") === "Hi"

extension String {
    mutating func removeLastExclamation() -> String {
        self.last == "!" ? String(self.dropLast()) : self
    }
}

var str = "Hi!"
print(str.removeLastExclamation())
str = "Hi!!!"
print(str.removeLastExclamation())
str = "!Hi"
print(str.removeLastExclamation())
str = "!Hi!"
print(str.removeLastExclamation())
str = "Hi! Hi!"
print(str.removeLastExclamation())
str = "Hi"
print(str.removeLastExclamation())
