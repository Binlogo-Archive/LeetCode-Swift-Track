//: [Previous](@previous)

import Foundation

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var left = [Int](repeating: 1, count: nums.count)
        var right = [Int](repeating: 1, count: nums.count)

        for i in 1..<nums.count {
            left[i] = nums[i - 1] * left[i - 1]
        }

        for i in (0..<nums.count - 1).reversed() {
            right[i] = nums[i + 1] * right[i + 1]
        }

        return (0..<nums.count).map { left[$0] * right[$0] }
    }
}

// Tests
let s = Solution()
s.productExceptSelf([1,2,3,4]) == [24,12,8,6]
s.productExceptSelf([0,0]) == [0, 0]
s.productExceptSelf([1,0]) == [0, 1]

//: [Next](@next)
