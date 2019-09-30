//: [Previous](@previous)

import Foundation

class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var largest = 0, indexRes = 0
        for (index, num) in nums.enumerated() {
            if num > largest {
                largest = num
                indexRes = index
            }
        }
        for num in nums {
            if num == largest { continue }
            if largest < num * 2 {
                return -1
            }
        }
        return indexRes
    }
}

// Tests
let s = Solution()
assert(s.dominantIndex([3, 6, 1, 0]) == 1)
assert(s.dominantIndex([1, 2, 3, 4]) == -1)

//: [Next](@next)
