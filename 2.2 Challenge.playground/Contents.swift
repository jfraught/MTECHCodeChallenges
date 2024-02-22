import UIKit

// Create a Rectangle struct
// Will have two Int properties. sideA and sideB
// Create two functions inside the struct. A area function and a perimeter function
// Each function will return an Int for the area of the rectangle and the perimeter of the rectangle respectivly.

struct Recatangle {
    var sideA: Int
    var sideB: Int

    func area() -> Int {
        sideA * sideB
    }

    func perimeter() -> Int {
        (sideA + sideB) * 2
    }

    mutating func scale(by numberToScaleBy: Int) {
        sideA *= numberToScaleBy
        sideB *= numberToScaleBy
    }
}

//Black diamond: Create a function in the struct called "scale" have it take an Int as a parameter. Multiply each side of the rectangle by the parameter to "scale up" the rectangle. This function does not return anything.

var square = Recatangle(sideA: 4, sideB: 4)
print(square.area())
print(square.perimeter())
square.scale(by: 4)
print(square.area())
print(square.perimeter())




