//: [Previous](@previous)

import Foundation

class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        if nums.count == 1 {
            return nums[0]
        }
        let count = nums.count
        var dp = [Int].init(repeating: 0, count: count)
        dp[0] = nums[0]
        dp[1] = max(nums[0], nums[1])
        for idx in 2..<count {
            dp[idx] = max(dp[idx - 2] + nums[idx], dp[idx - 1])
        }
        return dp[count - 1]
    }
}

// Tests
let s = Solution()
s.rob([1,2,3,1]) == 4
s.rob([2,7,9,3,1]) == 12

//: [Next](@next)
