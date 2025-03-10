import UIKit

/*
 
 Products of Array Except Self
 Given an integer array nums, return an array output where output[i] is the product of all the elements of nums except nums[i].

 Each product is guaranteed to fit in a 32-bit integer.

 Follow-up: Could you solve it in O(n) time without using the division operation?

 Example 1:

 Input: nums = [1,2,4,6]
 Output: [48,24,12,8]
 
 
 Example 2:

 Input: nums = [-1,0,1,2,3]
 Output: [0,-6,0,0,0]
 
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {

    guard !nums.isEmpty else { return [] }
    
    var output: [Int] = Array(repeating: 1, count: nums.count)
    
    /**** Brute Force - Solution 1 **/
//    for i in 0..<nums.count {
//        
//        var temp = nums
//        temp.remove(at: i)
//        
//        var product: Int = 1
//        for no in temp {
//            product *= no
//        }
//        
//        output.append(product)
//    }
    
    /**** Brrute Force - Solution 2 **/
//    for i in 0..<nums.count {
//        
//        var product = 1
//        for j in 0..<nums.count {
//            
//            if i != j {
//                product *= nums[j]
//            }
//        }
//        
//        output.append(product)
//    }
    
    var prefix : [Int] = Array(repeating: 1, count: nums.count)
    var suffix: [Int] = Array(repeating: 1, count: nums.count)
    
    for i in 1..<nums.count {
        prefix[i] = prefix[i-1] * nums[i-1]
    }
    
    for i in stride(from: (nums.count-2), through: 0, by: -1) {
        suffix[i] = suffix[i+1] * nums[i+1]
    }
    
    for i in 0..<nums.count {
        output[i] = prefix[i] * suffix[i]
    }
    
    return output
}

let nums = [2,4,6,2,1]
//let nums = [-1,0,1,2,3]
//let  nums = [-1,1,0,-3,3]
let output: [Int] = productExceptSelf(nums)
print("Products of Array Except Self: \(output)")
