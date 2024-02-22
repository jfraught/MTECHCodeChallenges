import UIKit
import Foundation

// Create a function that finds the distance between two points on an x,y plane.
// The function will take in 4 paramaters as doubles (x1,y1,x2,y2)
// Will return the distance as a double
// Most likely you do not know the formula for finding the distance between two points. Google it.

func findDistance(between coordinate1: (x1: Double, y1: Double), and coordinate2: (x2: Double, y2: Double)) -> Double {
    (pow((coordinate2.x2 - coordinate1.x1), 2) + pow((coordinate2.y2 - coordinate1.y1), 2)).squareRoot()
}

print(findDistance(between: (0, 1), and: (0, 6)))
print(findDistance(between: (35, 17), and: (76, 84)))


