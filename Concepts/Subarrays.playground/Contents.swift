// Subarrays

func subarrays(_ numbers: [Int]) {
    
    guard !numbers.isEmpty else {
        print("Array is empty.")
        return
    }
    
    for start in 0..<numbers.count {
        for end in (start + 1)...numbers.count {
            let subarray = Array(numbers[start..<end])
            print("Subarray: \(subarray)")
        }
        print("-----")
    }
}

// Example usage
let numbers = [1, 2, 3, 4, 5]
subarrays(numbers)
