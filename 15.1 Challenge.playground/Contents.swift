import UIKit

func distanceBetweenFirstAndLastPillars(numberOfPillars: Double, distanceBetweenPillarsM: Double, widthOfPillarCM: Double) -> Double {
    return ((numberOfPillars * distanceBetweenPillarsM) + ((numberOfPillars - 2) * (widthOfPillarCM / 100))) * 100
}

distanceBetweenFirstAndLastPillars(numberOfPillars: 4, distanceBetweenPillarsM: 6, widthOfPillarCM: 30)



