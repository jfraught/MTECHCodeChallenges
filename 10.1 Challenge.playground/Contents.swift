import UIKit

func convertToDate(_ dateString: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"

    return formatter.date(from: dateString)
}

if let today = convertToDate("2024-03-11") {
    print(today)
}
