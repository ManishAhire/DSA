import UIKit

/*
 Defination:
    List of elements of same type placed in a contiguous memory location.
 */


// Creating an empty array
var emptyArray: [Int] = []
print(emptyArray)

// Creating an array with initial values
var numbers: [Int] = [1, 2, 3, 4, 5]
print(numbers)

// Creating String array
var names = ["Manish", "Shiv", "Saanu"]
print(names)


// Creating array of Specific Size
var marks = [Float](repeating: 0.0, count: 50)
print(marks)


// Insert element at specific index
numbers.insert(6, at: 5)
print(numbers)

// Update element at specific index
numbers[0] = 10
print(numbers)

// Remove element at specific index
numbers.remove(at: 2)
print(numbers)

// Passing array to function
// Pass By Reference
func passByReference(arr: inout [Int]) {
    for i in 0..<arr.count {
        arr[i] = arr[i] + 1
    }
}
passByReference(arr: &numbers)
print(numbers)
