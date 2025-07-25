

func maxSubArraySum(_ numbers: [Int]) {
    
    guard !numbers.isEmpty else { return }
    
    var maxSum = 0
    var currentSum = 0
    for number in numbers {
        currentSum += number
        
        if currentSum < 0 {
            currentSum = 0
        }
        
        maxSum = max(currentSum, maxSum)
    }
    
    print("Max sum is: \(maxSum)")
}

let numbers = [-3, 4, -1, 5, -3]
maxSubArraySum(numbers)
