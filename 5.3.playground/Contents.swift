import UIKit

func isPalindrome(_ word: String) -> Bool {
//    let filtererdWord = word.filter(\.isLetter).lowercased()
    let filteredWord = word.filter { $0.isLetter }.lowercased()
    return filteredWord == String(filteredWord.reversed())
}


print(isPalindrome("racecar"))
print(isPalindrome("A man, a plan, a canal, Panama"))



