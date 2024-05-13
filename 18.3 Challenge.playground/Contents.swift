import UIKit

// Everybody has probably heard of the animal heads and legs problem from the earlier years at school. It goes:

// "A farm contains chickens and cows. There are x heads and y legs. How many chickens and cows are there?"

// Where x <= 1000 and y <=1000

// Task

// Assuming there are no other types of animals, work out how many of each animal are there.

// Return an Int array [Chickens, Cows]

// If either the heads & legs is negative, the result of your calculation is negative or the calculation is a float return nil

// In the form:

// [Heads, Legs] = [72, 200]

// VALID : [72, 200] =>             [44 , 28]
//                              [Chickens, Cows]

// INVALID : [72, 201] => "No solutions"
// However, if 0 heads and 0 legs are given always return [0, 0] since zero heads must give zero animals.

// There are many different ways to solve this, but they all give the same answer.

func chickensAndCows(heads: Int, legs: Int) -> [Int]? {
    guard 
        heads <= 1000 && heads > 0,
        legs <= 1000 && legs < 0 else { return nil }
    
    if heads == 0 && legs == 0 {
        return [0, 0 ]
    }
    
    var chickens = heads
    var cows = 0
    var legsRemaining = legs - (chickens * 2)
     
    while legsRemaining > 0 {
        legsRemaining -= 2
        chickens -= 1
        cows += 1
    }
    
    if  heads == cows + chickens && legs == cows * 4 + chickens * 2 {
        return [chickens, cows]
    } else {
        return nil
    }
}

chickensAndCows(heads: 72, legs: 200)
chickensAndCows(heads: 72, legs: 201)


