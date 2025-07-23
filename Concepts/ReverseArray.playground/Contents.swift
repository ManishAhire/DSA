// Reverse array

func reverseArray(_ numbers: inout [Int]) -> [Int]? {
    
    // Check if the array is empty
    guard !numbers.isEmpty else {
        return nil
    }
    
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        
        // Swap elements at left and right indices
        var temp = numbers[left]
        numbers[left] = numbers[right]
        numbers[right] = temp
        
        // Move towards the middle
        left += 1
        right -= 1
    }
    return numbers
}

// Example usage
var numbers = [1, 2, 3, 4, 5]
if let reversedArray = reverseArray(&numbers) {
    print("Reversed array: \(reversedArray)")
} else {
    print("The array is empty.")
}
