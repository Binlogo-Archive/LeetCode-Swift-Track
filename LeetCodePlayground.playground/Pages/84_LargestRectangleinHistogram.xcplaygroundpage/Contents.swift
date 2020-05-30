//: [Previous](@previous)

import Foundation

class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        if heights.isEmpty {
            return 0
        }
        var res = 0
        for left in 0..<heights.count {
            var minHeight = Int.max
            for right in left..<heights.count {
                minHeight = min(minHeight, heights[right])
                res = max(res, (right - left + 1) * minHeight)
            }
        }
        return res
    }
}

// Tests
let s = Solution()
s.largestRectangleArea([2,1,5,6,2,3]) == 10

//: [Next](@next)
