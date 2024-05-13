import UIKit
/*
 1. Implement a function called primes(below:) that takes an integer upper bound and calculates and returns all the prime numbers below that upper bound. The function should be able to take even very large upper bounds.
 2. Make the function use multiple threads to calculate primes in order to take advantage of the multiple cores in your devices CPU. You should still be able to call it synchronously without async/await or a completion handler. In other words, it should be a "regular" function like the one below.
 3. Make the function asynchronous using either async/await or a completion handler to return its result after the calculation is done while other Tasks can continue to run.
 4. (Black diamond) Time your function from step 3 and see if you can find ways to make it return its results faster.
 Function signature:
 func primes(below n: Int) -> [Int] {
 }
 Note: A prime number is a number that can only be evenly divided by itself and 1. (One itself is not considered prime, but 2 is.) For example: 7 is not divisible by 2, 3, 4, 5, or 6, so it is prime. Similarly sixty-seven (67) is not divisible by any number other than itself and 1, so it's prime.
 Hint: "Trial Division" is the simplest (but slowest) algorithm for finding prime numbers, but it's a fine place to start. (edited)
 
 */

func trialDivision(_ n: Int) -> Bool {
    var i = 2
    var k = Int(sqrt(Double(n)))
    
    while (i <= k) {
        if n % i == 0 {
            return false
        }
        i += 1
    }
    
    return true
}

trialDivision(5)

// Not async/await

/*func primes(below upperBound: Int) -> [Int] {
    guard upperBound > 1 else { return [0]}
    let serialQueue = DispatchQueue(label: "Primes")
    var primeNumbers = [Int]()

    DispatchQueue.concurrentPerform(iterations: upperBound) { i in
        print(i)
        if trialDivision(i) && i > 1 {
            serialQueue.sync {
                primeNumbers.append(i)
            }
        }
    }

    return primeNumbers.sorted()
}*/

func primes(below upperBound: Int) async throws -> [Int] {
    do {
        try await Task {
            
        }
    } catch {
        
    }
}


primes(below: 100)

