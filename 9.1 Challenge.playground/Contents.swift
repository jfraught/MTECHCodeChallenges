import UIKit
import Foundation

func power(x: Int, y: Int) -> Int {
//    Int(pow(Double(x), Double(y)))
    var result = x

    for _ in 1..<y {
        result *= x
    }
    return result
}

power(x: 4, y: 3) 
power(x: 2, y: 8)
power(x: 1, y: 1)

