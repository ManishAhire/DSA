import UIKit

/*
 
 1. Two Sum
 
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.
  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
 */

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    guard !nums.isEmpty else { return[] }
    
    var dict: [Int: Int] = [:]
    for (i, num) in nums.enumerated() {
        
        let difference = target - num
        
        let result = dict.contains { $0.key == difference}
        
        if result {
            return [dict[difference]!, i]
        }
        dict[num] = i
    }
    
    return []
    
    for i in 0..<nums.count {
        
        for j in (i+1)..<nums.count {
            
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    
    return []
}

// Input 1
//let nums = [2,7,11,15]
//let target = 9

// Input 2
//let nums = [3,2,4]
//let target = 6

// Input 3
let nums = [3,4,1,3]
let target = 6

// Function Call
let result = twoSum(nums, target)
print("Output is: \(result)")
