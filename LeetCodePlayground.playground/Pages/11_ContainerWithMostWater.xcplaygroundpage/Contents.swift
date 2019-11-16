//: [Previous](@previous)

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1, res = 0
        while left < right {
            let heightLeft = height[left], heightRight = height[right]
            res = max(res, (right - left) * min(heightLeft, heightRight))
            heightLeft < heightRight ? (left += 1) : (right -= 1)
        }
        return res
    }
}

// Tests
let s = Solution()
s.maxArea([1,8,6,2,5,4,8,3,7]) == 49

//: [Next](@next)
