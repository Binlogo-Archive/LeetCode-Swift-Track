//: [Previous](@previous)

//
// 724. 寻找数组的中心索引
//
// 题目链接：https://leetcode-cn.com/problems/find-pivot-index/
// 标签：数组
// 要点：两次遍历，一次求总和，一次渐进求和判断
// 时间复杂度：O(n)
// 空间复杂度：O(1)

import Foundation

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        // 求总和
        let sum = nums.reduce(0, +)
        var current = 0
        for (index, num) in nums.enumerated() {
            // 渐进求和判断
            if (sum - current - num) == current { return index }
            current += num
        }
        return -1
    }
}

// Tests
let s = Solution()
assert(s.pivotIndex([1, 7, 3, 6, 5, 6]) == 3)
assert(s.pivotIndex([1, 2, 3]) == -1)

//: [Next](@next)
