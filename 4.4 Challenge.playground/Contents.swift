import UIKit

enum TemperatureUnit {
    case fahrenheit, celsius, kelvin
}

struct Home {
    var currentTempInFarhenheit: Double
    var address: String
    var desiredUnit: TemperatureUnit

    var currentTemp: Double {
        switch desiredUnit {
        case .fahrenheit:
            return currentTempInFarhenheit
        case .celsius:
            return round(((currentTempInFarhenheit - 32) * 5 / 9) * 1000) / 1000
        case .kelvin:
            return round(((currentTempInFarhenheit - 32) * 5 / 9 + 273.15) * 1000) / 1000
        }
    }
}

let myHouse = Home(currentTempInFarhenheit: 73, address: "Where I live", desiredUnit: .kelvin)
print(myHouse.currentTemp)

