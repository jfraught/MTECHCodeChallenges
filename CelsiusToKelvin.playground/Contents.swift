import UIKit

struct Temperature {
    let celsius: Double


    var fahrenheit: Double {
        celsius * 1.8 + 32
    }

    var kelvin: Double {
        celsius + 273.15
    }
}
