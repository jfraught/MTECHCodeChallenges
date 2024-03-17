import UIKit

import Foundation

// Observe the photo of the ball clock:
// https://tinyurl.com/3pacct63
// Write a function that accepts 3 ball counts (one for each row) and returns a description of the time represented by those counts
// e.g. 1, 0, 0 would return something like: "The current time is: 1:00" but
// 2, 1, 2, would return something like: "The current time is 2:07"

func timeString(hr: Int, fiveMin: Int, min: Int) -> String {
    let minutes = fiveMin * 5 + min

    var minutesStr: String {
        if minutes < 10 {
            return "0\(minutes)"
        } else {
            return "\(minutes)"
        }
    }

    return "The current time is \(hr):\(minutesStr)"
}

print(timeString(hr: 1, fiveMin: 0, min: 0))
print(timeString(hr: 2, fiveMin: 1, min: 2))

// ⛷⚫️ Black diamond: Do it in reverse. Build a function that has one parameter of a `Date` and returns 3 ball counts of what the clock would show at a specific time of day

func threeBallTime(from date: Date) -> [Int] {
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)

    let fiveMinuteCount = minutes / 5
    let minuteCount = minutes % 5

    return [hour, fiveMinuteCount, minuteCount]
}

print(threeBallTime(from: Date()))


// Challenge created by Parker Rushton
