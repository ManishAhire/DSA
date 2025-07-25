
func maxSubarraySum(_ numbers: [Int]) -> Int? {
    
    guard !numbers.isEmpty else {
        print("Array is empty")
        return nil
    }
    
    var maxSum = 0
    var prefixArray: [Int] = Array.init(repeating: 0, count: numbers.count)
    prefixArray[0] = numbers[0]
    for i in 1..<numbers.count {
            prefixArray[i] = prefixArray[i-1] + numbers[i]
    }
    print("Prefix: \(prefixArray)")
    var currentSum = 0
    for start in 0..<numbers.count {
        for end in (start + 1)..<numbers.count {
             currentSum = start == 0 ? prefixArray[end] : prefixArray[end] - prefixArray[start - 1]
            
            if currentSum > maxSum {
                maxSum = currentSum
            }
        }
        
    }
    
    return maxSum
}


let numbers = [1, -2, 6, -1, 3]
if let maxSum = maxSubarraySum(numbers) {
    print("Max Sum: \(maxSum)")
} else {
    print("Array is Empty")
}
