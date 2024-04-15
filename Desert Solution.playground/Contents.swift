import UIKit
import UIKit

var greeting = "Hello, playground"
// Wilson primes satisfy the following condition. Let P represent a prime number.

// Then,

// ((P-1)! + 1) / (P * P)
// should give a whole number.

// Your task is to create a function that returns true if the given number is a Wilson prime.
func isPrime(_ num: Int) -> Bool {
    if num <= 1 {
        return false
    }
    if num <= 3 {
        return true
    }
    var i = 2
    while i * i <= num {
        if num % i == 0 {
            return false
        }
        i += 1
    }
    return true
}

func wilsonPrimes(_ num: Int) -> Bool {
    guard num > 1 else { return false }

    func modPow(_ base: Int, _ power: Int, _ mod: Int) -> Int {
        var result = 1
        var base = base
        var power = power
        while power > 0 {
            if power % 2 == 1 {
                result = (result * base) % mod
            }
            base = (base * base) % mod
            power /= 2
        }
        return result
    }
    let P = num
    let numerator = modPow(P - 1, P - 2, P)
    return numerator == (P - 1) 
}

    print(wilsonPrimes(5))
    print(wilsonPrimes(13))
    print(wilsonPrimes(12))
    print(wilsonPrimes(11))
    print(wilsonPrimes(563))
