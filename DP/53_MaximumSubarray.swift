
//
// 53. 最大子序和
//
// 题目链接：https://leetcode-cn.com/problems/maximum-subarray/
// 标签：数组、分治算法、动态规划
// 要点：贪心
// 时间复杂度： O(n)
// 空间复杂度： O(1)
//

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSum = nums.first ?? Int.min
        var maxSum = currentSum
        for current in 1..<nums.count {
            currentSum = max(currentSum + nums[current], nums[current])
            maxSum = max(currentSum, maxSum)
        }
        return maxSum
    }
}

// Tests
let s = Solution()
s.maxSubArray([-2,1,-3,4,-1,2,1,-5,4]) == 6
s.maxSubArray([1]) == 1
