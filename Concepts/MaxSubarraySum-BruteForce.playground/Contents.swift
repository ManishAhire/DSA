// Print max subarray sum using brute force approch

func maxSubArraySum(_ numbers: [Int]) -> Int {
    
    var maxSum = 0
    
    for start in 0..<numbers.count {
        for end in (start + 1)...numbers.count {
            
            let subarray = Array(numbers[start..<end])
            var currentSum = 0
            for number in subarray {
                currentSum += number
            }
            
            if currentSum > maxSum {
                maxSum = currentSum
            }
        }
    }
    return maxSum
}

let numbers = [1, -2, 6, -1, 3]
let maxSum = maxSubArraySum(numbers)
print("Max Sum: \(maxSum)")
