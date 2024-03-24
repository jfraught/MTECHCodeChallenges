import UIKit

// Remove the spaces from the string, then return the resultant string.

func removeSpaces(from str: String) -> String {
    str.filter { !$0.isWhitespace }
}
