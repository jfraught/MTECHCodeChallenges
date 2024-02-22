import UIKit

// Introduction
// The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

// Task
// Given a year, return the century it is in.

// Examples
// 1705 --> 18
// 1900 --> 19
// 1601 --> 17
// 2000 --> 20

func centuryOf(year: Int) -> Int {
    if year % 100 > 0 {
        year / 100 + 1
    } else {
        year / 100
    }
}

print(centuryOf(year: 1705))
print(centuryOf(year: 1900))
print(centuryOf(year: 1601))
print(centuryOf(year: 2000))
