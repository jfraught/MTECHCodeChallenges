import UIKit

// Wilson primes satisfy the following condition. Let P represent a prime number.

// Then,

// ((P-1)! + 1) / (P * P)
// should give a whole number.

// Your task is to create a function that returns true if the given number is a Wilson prime.

func factorial(_ num: Double) -> Double {
    num < 1 ? 1 : num * factorial(num - 1)
}

func isPrime(number: Double, _ index: Double = 2) -> Bool {

    if number <= 1 {
        return false
    }

    if number == index {
        return true
    }

    if number.truncatingRemainder(dividingBy: index) == 0 {
        return false
    }

    return isPrime(number: number, index + 1)
}

func isWilsonPrime(_ num: Double) -> Bool {
    isPrime(number: num) ? ((factorial(num - 1) + 1)).truncatingRemainder(dividingBy: (num * num)) == 0 : false
}


print(isWilsonPrime(4))
print(isWilsonPrime(5))
print(isWilsonPrime(12))
print(isWilsonPrime(13))
print(isWilsonPrime(563))
print((factorial(563 - 1)))


