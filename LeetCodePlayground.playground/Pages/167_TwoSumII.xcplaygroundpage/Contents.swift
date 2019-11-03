//: [Previous](@previous)

import Foundation

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0, j = numbers.count - 1
        
        while i < j {
            switch numbers[i] + numbers[j] - target {
            case 0: return [i + 1, j + 1]
            case 0...: j = j - 1
            default: i = i + 1
            }
        }
        return []
    }
}

// Tests
let s = Solution()
s.twoSum([2, 7, 11, 15], 9) == [1, 2]

//: [Next](@next)
