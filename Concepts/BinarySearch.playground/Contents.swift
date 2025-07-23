import UIKit

// Binary Search Implementation

func binarySearch(_ numbers: [Int], target: Int) -> Int? {
    var left = 0
    var right = numbers.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        
        if numbers[mid] == target {
            return mid // Target found at index mid
        } else if numbers[mid] < target {
            left = mid + 1 // Search in the right half
        } else {
            right = mid - 1 // Search in the left half
        }
    }
    return nil // Target not found
}

// Example usage
let sortedNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
if let index = binarySearch(sortedNumbers, target: 5) {
    print("Target found at index \(index).")
} else {
    print("Target not found.")
}
    

