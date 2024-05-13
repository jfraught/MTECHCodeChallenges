import UIKit

// Your task is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

func sumOfIntegersInString(_ string: String) -> Int {
    return string
        .components(separatedBy: .decimalDigits.inverted)
        .compactMap { Int($0) } 
        .reduce(0, +)
}

sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog")
