import UIKit

func largestNumber(_ numbers: [Int]) -> Int? {
    // Check if the array is empty
    guard !numbers.isEmpty else {
        return nil
    }
    
    // Initialize the largest number with the first element
    var largest = numbers[0]
    
    // Iterate through the array to find the largest number
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
    
    return largest
}
// Example usage
let numbers = [3, 5, 1, 8, 2]
if let largest = largestNumber(numbers) {
    print("The largest number is \(largest).")
} else {
    print("The array is empty.")
}



