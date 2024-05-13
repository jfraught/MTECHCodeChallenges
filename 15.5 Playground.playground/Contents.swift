import UIKit

// Create a function that can convert a binary number(represented in a string) to a decimal number.

func binaryToDouble(_ binaryString: String) -> Double {
    guard binaryString.range(of: "^[01]*$", options: .regularExpression) != nil else { return 0 }
   
    var result = 0.0
    var binaryCount = Double(binaryString.count - 1)

    for binary in binaryString {
        if binary == "1" {
            result += pow(2, binaryCount)
        }
        binaryCount -= 1
    }

    return result
}

print(binaryToDouble("101101")) //45
print(binaryToDouble("10010")) //18
print(binaryToDouble("10o10")) //0.0
