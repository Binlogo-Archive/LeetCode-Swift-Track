//
// 274. H指数
//
// 题目链接：https://leetcode-cn.com/problems/h-index/
// 标签：排序、哈希
// 要点：逆序排序后遍历
// 时间复杂度：O(nlog(n))
// 空间复杂度：O(1)

import Foundation

class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        let sorted = citations.sorted(by: >)

        var i = 0
        while i < sorted.count && sorted[i] > i {
            i += 1
        }
        return i
    }
}

// Tests
let s = Solution()
assert(s.hIndex([3,0,6,1,5]) == 3)
