import UIKit

extension String {
    func isPalindrome() -> Bool {
        let filteredWord = String(self.filter(\.isLetter).lowercased())
        return filteredWord == String(filteredWord.reversed())
    }
}

let strings = ["racecar", "dad", "golf", "jury", "mom"]

for string in strings {
    print(string.isPalindrome())
}
