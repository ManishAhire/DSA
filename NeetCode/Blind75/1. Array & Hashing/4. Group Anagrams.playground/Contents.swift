import UIKit

/*
 
 49. Group Anagrams

 Given an array of strings strs, group the anagrams together. You can return the answer in any order.


 Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

 Explanation: There is no string in strs that can be rearranged to form "bat".
 The strings "nat" and "tan" are anagrams as they can be rearranged to form each other.
 The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to form each other.
 
 
 Example 2:
 Input: strs = [""]
 Output: [[""]]

 Example 3:
 Input: strs = ["a"]
 Output: [["a"]]
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
       
    guard !strs.isEmpty else {
        return []
    }
    
    var dict: [String: [String]] = [:]
    
    for str in strs {
        let sorted = String(str.sorted())
        dict[sorted, default: []].append(str)
    }
    
    return Array(dict.values)
}

let strs = ["eat","tea","tan","ate","nat","bat"]
let result = groupAnagrams(strs)
print("The group anagrams are: \(result)")
