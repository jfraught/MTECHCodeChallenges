import UIKit

func stringy(size: Int) -> String {
//    var result: String = ""
//
//    for index in 0..<size {
//        result +=  index.isMultiple(of: 2) ? "1" : "0"
//    }
//
//    return result

    (0..<size).map { $0.isMultiple(of: 2) ? "1" : "0" }.joined()
}

print(stringy(size: 6))
print(stringy(size: 4))
print(stringy(size: 11))
print(stringy(size: 0))
