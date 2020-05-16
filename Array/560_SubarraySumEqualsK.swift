
//
// 560. 和为K的子数组
//
// 题目链接：https://leetcode-cn.com/problems/subarray-sum-equals-k/
// 标签：数组、哈希表
// 要点：从暴力解法着手启发思路，借助哈希表缓存前缀和进行优化
// 时间复杂度： O(N)
// 空间复杂度： O(N)
//

import Foundation

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var pre = 0
        var dict = [0: 1]
        for num in nums {
            pre += num
            if let value = dict[pre - k] {
                count += value
            }
            dict[pre] = (dict[pre] ?? 0) + 1
        }
        return count
    }
}

// Tests
let s = Solution()
s.subarraySum([1, 1, 1], 2)
s.subarraySum([0,0,0,0,0,0,0,0,0,0], 0)
