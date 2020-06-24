//: [Previous](@previous)

import Foundation

class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted(by: <)
        var minDiff = Int.max
        var res = 0

        for i in 0..<nums.count-2 {

            if i > 0 && nums[i] == nums[i - 1] { continue }

            var left = i + 1
            var right = nums.count - 1

            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                // 绝对相等，提前返回 target
                if sum == target { return sum }

                let diff = abs(sum - target)
                if diff < minDiff {
                    minDiff = diff
                    res = sum
                }

                sum < target ? (left += 1) : (right -= 1)
            }
        }

        return res
    }
}

// Tests
let s = Solution()
s.threeSumClosest([-1,2,1,-4], 1) == 2

//: [Next](@next)
