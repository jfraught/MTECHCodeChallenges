import UIKit

//create a function called completeTheSquare so that it squares each number passed into it and then sums the results together.

//For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

// The function will take an array of ints and will return a single int

func completeTheSquare(for numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number * number
    }

    return sum
}

print(completeTheSquare(for: [1, 2, 2]))
