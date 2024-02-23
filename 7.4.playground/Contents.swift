import UIKit

var greeting = "Hello, playground"

func heron(a: Double, b: Double, c: Double) -> String {
    let s = (a + b + c) / 2
    let area = sqrt(s * (s - a) * (s - b) * (s - c))

    return String(format: "%.2f", area)
}

heron(a: 23, b: 41, c: 46)
print(heron(a: 1, b: 2, c: 3))       //0.00
print(heron(a: 5, b: 5, c: 5))       //10.83
print(heron(a: 100, b: 200, c: 200)) //9682.46
