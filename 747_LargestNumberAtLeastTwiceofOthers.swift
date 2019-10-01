//
// 747. Largest Number At Least Twice of Others
//
// 题目链接：https://leetcode-cn.com/problems/largest-number-at-least-twice-of-others/submissions/
// 标签：数组
// 要点：两次遍历，一次求总和，一次判断是否大于（除自身外）其他数两倍
// 时间复杂度：O(n)
// 空间复杂度：O(1)

import Foundation

class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var largest = 0, indexRes = 0
        for (index, num) in nums.enumerated() {
            if num > largest {
                largest = num
                indexRes = index
            }
        }
        for num in nums {
            if num == largest { continue }
            if largest < num * 2 {
                return -1
            }
        }
        return indexRes
    }
}

// Tests
let s = Solution()
assert(s.dominantIndex([3, 6, 1, 0]) == 1)
assert(s.dominantIndex([1, 2, 3, 4]) == -1)
