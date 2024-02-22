import UIKit

func multiplyByFive(_ numbers: [Int]) -> [Int] {
    var numbersMultiplied: [Int] = []
    for number in numbers {
        numbersMultiplied.append(number * 5)
    }

    return numbersMultiplied
}

print(multiplyByFive([1, 2, 3, 4, 5]))
