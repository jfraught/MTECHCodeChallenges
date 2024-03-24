import UIKit

func isPrime(number: Int, _ index: Int = 2) -> Bool {
    
    if number <= 1 {
        return false
    }

    if number == index {
        return true
    }

    if number % index == 0 {
        return false
    }

    return isPrime(number: number, index + 1)
}

print(isPrime(number: 1))
print(isPrime(number: 2))
print(isPrime(number: 3))
print(isPrime(number: 4))
print(isPrime(number: 5))
print(isPrime(number: 6))
print(isPrime(number: 7))
print(isPrime(number: 8))
print(isPrime(number: 9))
print(isPrime(number: 10))
