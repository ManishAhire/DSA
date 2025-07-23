// Defination: Find an index of an element in an array

// Linear Search Implementation
func linearSearch(array: [Int], element: Int) -> Int? {
    for (index, value) in array.enumerated() {
        if value == element {
            return index // Return the index of the found element
        }
    }
    return nil // Return nil if the element is not found
}

// Example usage
let numbers = [10, 20, 30, 40, 50]
let elementToFind = 30
if let index = linearSearch(array: numbers, element: elementToFind) {
    print("Element found at index: \(index)")
} else {
    print("Element not found")
}
