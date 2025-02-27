import UIKit

/*
 
 217. Contains Duplicate
 
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.


 Example 1:

 Input: nums = [1,2,3,1]
 Output: true
 Explanation: The element 1 occurs at the indices 0 and 3.

 Example 2:

 Input: nums = [1,2,3,4]
 Output: false
 Explanation: All elements are distinct.

 Example 3:

 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 
 */


func containsDuplicate(_ nums: [Int]) -> Bool {

    guard !nums.isEmpty else { return false }
    
    // Brute Force
//    for i in 0..<nums.count {
//        
//        for j in (i+1)..<nums.count {
//            
//            if nums[i] == nums[j] {
//                return true
//            }
//        }
//    }
//    return false
    
    //-------------------------------------------------//
    
    // Using Temp array
//    var temp: [Int] = []
//    
//    for num in nums {
//        
//        if temp.contains(num) {
//            return true
//        }
//        temp.append(num)
//    }
//    
//    return false

    //-------------------------------------------------//
    
    // Using Hash Tabel
    
    var dic: [Int: Bool] = [:]
    
    for num in nums {
        
        if dic[num] ?? false {
            return true
        }
        
        dic[num] = true
    }
    
    return false
}

//let nums = [1,2,3,1]
let nums = [1,1,1,3,3,4,3,2,4,2]
let result = containsDuplicate(nums)
print("Contains Duplicate: \(result)")

