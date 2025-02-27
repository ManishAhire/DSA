import UIKit

/*
 
 125. Valid Palindrome
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.


 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.

 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.

 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
 
 */

func isPalindrome(_ str: String) -> Bool {
    
    guard !str.isEmpty else { return true }
    
    // Solution - 3: Two Pointers
    var left = str.startIndex, right = str.index(before: str.endIndex)
    
    while left < right {
        if !isAlphanumeric(char: str[left]) {
            left = str.index(after: left)
            continue
        }
        
        if !isAlphanumeric(char: str[right]) {
            right = str.index(before: right)
            continue
        }
        if str[left].lowercased() != str[right].lowercased() {
            return false
        }
        
        left = str.index(after: left)
        right = str.index(before: right)
    }
    return true
    
    // Solution - 2: Manually check Alphanumeric
    
    var newStr = String()
    for char in str {
        if isAlphanumeric(char: char) {
            newStr += String(char).lowercased()
        }
    }
    return newStr == String(newStr.reversed())
    
    
    // Solution - 1: Inbuild function
    
    let alphaNumStr = str.components(separatedBy: .alphanumerics.inverted).joined().lowercased()
    return alphaNumStr == String(alphaNumStr.reversed())
}

func isAlphanumeric(char: Character) -> Bool {
    return (char >= "A" && char <= "Z") ||
    (char >= "a" && char <= "z") ||
    (char >= "0" && char <= "9")
}

//let s = "A man, a plan, a canal: Panama"
let s = "a."
let result = isPalindrome(s)
print("Is it palindrom: \(result)")
