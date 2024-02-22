import UIKit

// In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.

//For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.

func findCuboidVolumeDifference(between cuboidOne: [Int], and cuboidTwo: [Int]) -> Int {
    var cuboidOneVolume = cuboidOne[0]
    var cuboidTwoVolume = cuboidTwo[0]

    for index in 1..<cuboidOne.count {
        cuboidOneVolume *= cuboidOne[index]
        cuboidTwoVolume *= cuboidTwo[index]
    }

    if cuboidOneVolume > cuboidTwoVolume {
        print("\(cuboidOneVolume) - \(cuboidTwoVolume)")
        return cuboidOneVolume - cuboidTwoVolume
    } else {
        print("\(cuboidTwoVolume) - \(cuboidOneVolume)")
        return cuboidTwoVolume - cuboidOneVolume
    }
}

findCuboidVolumeDifference(between: [2, 2, 3], and: [5, 4, 1])
