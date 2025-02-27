import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
        
    guard !s.isEmpty, !t.isEmpty else { return false }
    
    guard s.count == t.count else { return false }
    
    // Using Sorting
//    return s.sorted() == t.sorted()
    
    var dictS: [Character: Int] = [:]
    var dictT: [Character: Int] = [:]
    
    for char in s {
        dictS[char, default: 0] += 1
    }
    
    for char in t {
        dictT[char, default: 0] += 1
    }
    
    print("Dict S: \(dictS)")
    print("Dict T: \(dictT)")
    
    for (key, _) in dictS {
        print("Value of \(key) in dictS: \(dictS[key] ?? 0)")
        print("Value of \(key) in dictT: \(dictT[key] ?? 0)")
        if dictS[key] != dictT[key] {
            return false
        }
    }
    
    return true
}

//let s = "anagram", t = "nagaram"
let s = "rat", t = "car"
let result = isAnagram(s, t)
print("is Anagram: \(result)")
