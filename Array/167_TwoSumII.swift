//
// 167. 两数之和 II - 输入有序数组
//
// 题目链接：https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/
// 标签：数组、双指针、二分查找
// 要点：指针碰撞，由于数组有序，采用一头一尾双指针，通过判断两数之和与目标值的关系，相向遍历数组
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0, j = numbers.count - 1
        
        while i < j {
            switch numbers[i] + numbers[j] {
            case target: return [i + 1, j + 1]
            case target...: j = j - 1
            default: i = i + 1
            }
        }
        return []
    }
}

// Tests
let s = Solution()
s.twoSum([2, 7, 11, 15], 9) == [1, 2]
