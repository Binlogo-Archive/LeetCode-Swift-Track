//: [Previous](@previous)

import Foundation

class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        if heights.isEmpty {
            return 0
        }
        let count = heights.count
        var left = [Int](repeating: 0, count: count)
        var right = [Int](repeating: count, count: count)
        var stack = [Int]()
        for i in 0..<count {
            while let top = stack.last, heights[top] >= heights[i] {
                right[top] = i
                stack.popLast()
            }
            left[i] = stack.last ?? -1
            stack.append(i)
        }

        var res = 0
        for i in 0..<count {
            res = max(res, (right[i] - left[i] - 1) * heights[i])
        }
        return res
    }
}

// Tests
let s = Solution()
s.largestRectangleArea([2,1,5,6,2,3]) == 10
s.largestRectangleArea([1]) == 1

//: [Next](@next)
