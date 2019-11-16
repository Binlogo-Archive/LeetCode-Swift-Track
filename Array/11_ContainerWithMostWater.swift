
//
// 11. 盛最多水的容器
//
// 题目链接：https://leetcode-cn.com/problems/container-with-most-water/
// 标签：数组、双指针
// 要点：在由线段长度构成的数组中使用两个指针，一个放在开始，一个置于末尾。
//      使用变量 res 来持续存储到目前为止所获得的最大面积。
//      在每一步中，找出指针所指向的两条线段形成的区域，更新 res，并将指向较短线段的指针向较长线段那端移动一步。
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1, res = 0
        while left < right {
            let heightLeft = height[left], heightRight = height[right]
            res = max(res, (right - left) * min(heightLeft, heightRight))
            heightLeft < heightRight ? (left += 1) : (right -= 1)
        }
        return res
    }
}

// Tests
let s = Solution()
s.maxArea([1,8,6,2,5,4,8,3,7]) == 49
