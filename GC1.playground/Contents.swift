import UIKit

// Closest Palindrome

// Write a function that returns the closest palindrome number to an integer. If two palindrome numbers tie in absolute distance, return the smaller number.

func closestPalindrome(_ num: Int) -> Int {
    var upCount = 0
    var downCount = 0
    var upPalindrome = num
    var downPalindrome = num
    
    while areEqual(upPalindrome) == false {
        upCount += 1
        upPalindrome += 1
    }
    // should probably make one while loop
    while areEqual(downPalindrome) == false {
        downCount += 1
        downPalindrome -= 1
    }

    return upCount >= downCount ? downPalindrome : upPalindrome
}

func areEqual(_ digits: Int) -> Bool {
    String(digits) == String(String(digits).reversed())
}



// Examples
closestPalindrome(887)
//➞ 888

closestPalindrome(100)
//➞ 99
// 99 and 101 are equally distant, so we return the smaller palindrome.

closestPalindrome(888) 
//➞ 888

//closestPalindrome(27) ➞ 22
