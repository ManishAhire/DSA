// Pairs in An Array

func pairsInAnArray(_ numbers: [Int]) {
    
    guard numbers.count >= 2 else {
        print("Array must contain at least two elements.")
        return
    }
    
    for i in 0..<numbers.count {
        for j in (i + 1)..<numbers.count {
            print("Pair: (\(numbers[i]), \(numbers[j]))")
        }
    }
}

// Example usage
let numbers = [1, 2, 3, 4]
pairsInAnArray(numbers)
