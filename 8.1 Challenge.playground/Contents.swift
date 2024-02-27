import UIKit


func containsOnlyNumbers(for num: String) -> Bool {
//    let num: [String] = num.map { String($0)}
//    var result = false
//    for char in num {
//        if let scalar = UnicodeScalar(char) {
//            if CharacterSet.decimalDigits.contains(scalar) {
//                print(scalar)
//                result = true
//            } else {
//                return false
//            }
//        }
//    }
//    return result

    //num.rangeOfCharacter(from: .decimalDigits.inverted) == nil
    num.allSatisfy( \.isNumber)
}

containsOnlyNumbers(for: "01010101")
containsOnlyNumbers(for: "123456789")
containsOnlyNumbers(for: "9223372036854775808")
containsOnlyNumbers(for: "1.01")
containsOnlyNumbers(for: "1,000")
containsOnlyNumbers(for: "1_000")
containsOnlyNumbers(for: "1a000")


