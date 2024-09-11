import Observation
import SwiftUI

// There are three cups on a table, at positions A, B, and C. At the start, there is a ball hidden under the cup at position B.
// However, I perform several swaps on the cups, which is notated as two letters. For example, if I swap the cups at positions A and B, I could notate this as AB or BA.

// Create a function that returns the letter position that the ball is at, once I finish swapping the cups. The swaps will be given to you as an array.

// Worked Example

// cupSwapping(["AB", "CA", "AB"]) ➞ "C"

// Ball begins at position B.
// Cups A and B swap, so the ball is at position A.
// Cups C and A swap, so the ball is at position C.
// Cups A and B swap, but the ball is at position C, so it doesn't move.

// Other Examples

// cupSwapping(["AB", "CA"]) ➞ "C"

// cupSwapping(["AC", "CA", "CA", "AC"]) ➞ "B"

// cupSwapping(["BA", "AC", "CA", "BC"]) ➞ "A"

// Notes
// A swap could be notated in two different ways, since both ways end up with the same outcome.
// All swaps will be notated as capital letters and will be valid.
// You cannot swap a cup with itself.

func cupSwapping(_ swaps: [String]) -> String {
    var ballPosition = "B"
    
    for swap in swaps {
        let cupsToSwap = swap.split(separator: "")
        
        if cupsToSwap[0] == ballPosition {
            ballPosition = String(cupsToSwap[1])
        } else if cupsToSwap[1] == ballPosition {
            ballPosition = String(cupsToSwap[0])
        }
    }
    
    return ballPosition
}

cupSwapping(["AB", "CA", "AB"])
cupSwapping(["AB", "CA"])
cupSwapping(["AC", "CA", "CA", "AC"])
cupSwapping(["BA", "AC", "CA", "BC"])
