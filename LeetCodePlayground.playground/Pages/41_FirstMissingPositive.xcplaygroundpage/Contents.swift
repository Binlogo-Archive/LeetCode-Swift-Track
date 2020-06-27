//: [Previous](@previous)

import Foundation

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var ns = nums
        let len = ns.count
        for i in 0..<len {
            if ns[i] <= 0 {
                ns[i] = len + 1
            }
        }

        for i in 0..<len {
            let num = abs(ns[i])
            if num > 0 && num <= len && ns[num-1] > 0 {
                ns[num-1] *= -1
            }
        }

        for i in 0..<len {
            if ns[i] > 0 {
                return i + 1
            }
        }
        return len + 1
    }
}

// Tests
let s = Solution()
s.firstMissingPositive([1, 2, 0]) == 3
s.firstMissingPositive([3, 4, -1, 1]) == 2
s.firstMissingPositive([7, 8, 9, 11, 12]) == 1

//: [Next](@next)
