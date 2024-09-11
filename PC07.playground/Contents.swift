import UIKit

// :snow_capped_mountain: MTECH Code Challenge PC07: "Adding Time"
// Concept: Practice working with unique math related to time; practice reading
// Instructions:
  // In this challenge, your task is to add a variable number of hours, minutes, and seconds to a given time, resulting in a new adjusted time.
  // You will be given a string, "now", which represents a timestamp in the format "hh:mm:ss", and three integers "hrs", "min", and "sec" representing the hours, minutes, and seconds to add. Implement a function that returns a string with the newly adjusted timestamp in the same format.
// Examples:
  // Input: (now: "01:00:00", hrs: 1, min: 30, sec: 10)
  // Output: "02:30:10"
  // Input: (now: "18:22:30", hrs: 4, min: 60, sec: 30)
  // Output: "23:23:00"
  // Input: (now: "04:00:00", hrs: 72, min: 0, sec: 0)
  // Output: "04:00:00"
// Notes:
  // The values of hrs, min, and sec can be any positive integers. You must correctly add them to their respective units, carrying over when necessary. In the second example above, 60 minutes equals one hour, and 60 seconds (30 + 30) equals one minute.
  // If the total time exceeds 23:59:59 (i.e. 11:59 pm) the time will reset from "00:00:00" (i.e. midnight). In the third example above, 72 hours is equivalent to exactly 3 full days, so the output string winds up being the same as the input.
// ⌺ Black Diamond Challenge:
  // Make it so that additional units of time gets inserted at the beginning of the output string as needed up to representing years. For example, if the user called timeAdjust(now: "1:00:00", hrs: 0, min: 525623, sec: 45) (i.e. added one year, 23 minutes, and 45 seconds), the output would be "01:00:00:01:23:45", representing 1 year, 0 months, 0 days, 1 hour, 23 minutes, and 45 seconds.
import Foundation

func timeAdjust(now: String, hrs: Int, min: Int, sec: Int) -> String {
    let timeParts = now.split(separator: ":")
    
    guard 
        let hours = Int(timeParts[0]),
        let minutes = Int(timeParts[1]),
        let seconds = Int(timeParts[2]) else { return "" }
    
    var newHours = hours + hrs
    var newMinutes = minutes + min
    var newSeconds = seconds + sec
    
    while newSeconds > 59 {
        newMinutes += 1
        newSeconds -= 60
    }
    
    while newMinutes > 59 {
        newHours += 1
        newMinutes -= 60
    }
    
    if newHours > 23 {
        newHours = newHours % 24
    }
    
    return "\(String(format: "%02d", newHours)):\(String(format: "%02d", newMinutes)):\(String(format: "%02d", newSeconds))"
}

timeAdjust(now: "01:00:00", hrs: 1, min: 30, sec: 10)
timeAdjust(now: "18:22:30", hrs: 4, min: 60, sec: 30)
timeAdjust(now: "04:00:00", hrs: 72, min: 0, sec: 0)

//func timeAdjust(now: String, yrs: Int, mths: Int, dys: Int, hrs: Int, min: Int, sec: Int) -> String {
//    let timeParts = now.split(separator: ":")
//    
//    guard
//        let years = Int(timeParts[0]),
//        let months = Int(timeParts[1]),
//        let days = Int(timeParts[2]),
//        let hours = Int(timeParts[3]),
//        let minutes = Int(timeParts[4]),
//        let seconds = Int(timeParts[5]) else { return "" }
//
//    var newYears = years + yrs
//    var newMonths = months + mths
//    var newDays = days + dys
//    var newHours = hours + hrs
//    var newMinutes = minutes + min
//    var newSeconds = seconds + sec
//    
//    while newSeconds > 59 {
//        newMinutes += 1
//        newSeconds -= 60
//    }
//    
//    while newMinutes > 59 {
//        newHours += 1
//        newMinutes -= 60
//    }
//    
//    while newHours > 23 {
//        newDays += 1
//        newHours -= 24
//    }
//    
//    while days > 28 {
//        switch newMonths {
//        case 0, 2, 4, 6, 7, 9, 11:
//            newMonths += 1
//            newDays -= 31
//        case 1:
//            newMonths += 1
//            newDays -= 28
//        case 3, 5, 8, 10:
//            newMonths += 1
//            newDays -= 30
//        default:
//            print("You sh")
//        }
//    }
//    
//    
//    return "\(String(format: "%02d", newHours)):\(String(format: "%02d", newMinutes)):\(String(format: "%02d", newSeconds))"
//}
