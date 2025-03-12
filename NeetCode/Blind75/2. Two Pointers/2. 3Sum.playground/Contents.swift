import UIKit

/*
 15. 3Sum
 
 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
 
 Notice that the solution set must not contain duplicate triplets.
 
 
 
 Example 1:
 
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Explanation:
 nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
 nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
 nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
 The distinct triplets are [-1,0,1] and [-1,-1,2].
 Notice that the order of the output and the order of the triplets does not matter.
 
 Example 2:
 
 Input: nums = [0,1,1]
 Output: []
 Explanation: The only possible triplet does not sum up to 0.
 Example 3:
 
 Input: nums = [0,0,0]
 Output: [[0,0,0]]
 Explanation: The only possible triplet sums up to 0.
 */

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    guard !nums.isEmpty else {
        return []
    }
    
    
    var output: [[Int]] = []
    
    // Optimal Solution
    var sortedNums = nums.sorted()
    
    for i in 0..<sortedNums.count {
        
        if i > 0 && sortedNums[i] == sortedNums[i - 1] {
            continue
        }
        
        var j = i + 1, k = sortedNums.count - 1
        
        while(j < k) {
            
            var sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
            
            if sum < 0 {
                j += 1
            } else if sum > 0 {
                k -= 1
            } else {
                output.append([sortedNums[i], sortedNums[j], sortedNums[k]])
                
                j += 1
                k -= 1
                
                while j < k && sortedNums[j] == sortedNums[j-1] {
                    j += 1
                }
            }
        }
        
    }
    return output
    
    
    // Brute Force
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            for k in (j+1)..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if sum == 0 {
                    output.append([nums[i], nums[j], nums[k]])
                }
            }
        }
    }
    
    return output
    
}

let nums = [-1,0,1,2,-1,-4]
let result = threeSum(nums)
print("Final Result: \(result)")
