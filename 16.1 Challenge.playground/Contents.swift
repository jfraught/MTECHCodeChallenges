import UIKit

func swapNames(name: String) -> String {
    name.split(separator: " ").reversed().joined(separator: " ")
}

print(swapNames(name: "John McClane"))
