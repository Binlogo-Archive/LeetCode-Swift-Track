
//
// 209. 长度最小的子数组
//
// 题目链接：https://leetcode-cn.com/problems/minimum-size-subarray-sum/
// 标签：数组、双指针、二分查找
// 要点：定义一个 left 指针，另外定义一个 i 指针向前遍历，与此同时求和，
//      当和大于目标值时，更新 res, 并将和减去 left 指针的值，left 指针前进一步
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var left = 0, sum = 0, res = Int.max
        for i in 0..<nums.count {
            sum += nums[i]
            while sum >= s {
                res = min(res, i + 1 - left)
                sum -= nums[left]
                left += 1
            }
        }
        return res != Int.max ? res : 0
    }
}

// Tests
let s = Solution()
s.minSubArrayLen(7, [2,3,1,2,4,3]) == 2
s.minSubArrayLen(4, [1, 4, 4]) == 1
s.minSubArrayLen(11, [1, 2, 3, 4, 5]) == 3
s.minSubArrayLen(15, [1, 2, 3, 4, 5]) == 5
s.minSubArrayLen(6, [10,2,3]) == 1
