import UIKit

// Clock shows h hours, m minutes and s seconds after midnight.

// Your task is to write a function which returns the time since midnight in milliseconds.

// Example:
// h = 0
// m = 1
// s = 1

// result = 61000

func millisecondsSinceMidnight(hours: Int, minutes: Int, seconds: Int) -> Int {
    (hours * 60 * 60 * 1000) + (minutes * 60 * 1000) + (seconds * 1000)
}


millisecondsSinceMidnight(hours: 0, minutes: 1, seconds: 1)

