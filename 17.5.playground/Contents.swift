import UIKit

// Write a simple function that takes a Date as a parameter and returns a Boolean representing whether the date is today or not.

// Make sure that your function does not return a false positive by only checking the day.

extension Date {
    func isToday() -> Bool {
        let timeDifferenceInSeconds = self.timeIntervalSince1970 - Date.now.timeIntervalSince1970
    
        return timeDifferenceInSeconds <= 0 && timeDifferenceInSeconds >= -(24 * 60 * 60)
    }
}

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM-dd-yyyy"
var date = dateFormatter.date(from: "05-03-2024")
if let date {
    print(date.isToday())
}

date = dateFormatter.date(from: "05-02-2024")
if let date {
    print(date.isToday())
}

date = dateFormatter.date(from: "05-04-2024")
if let date {
    print(date.isToday())
}
