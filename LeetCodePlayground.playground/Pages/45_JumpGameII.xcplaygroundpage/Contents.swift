//: [Previous](@previous)

//
// 45. 跳跃游戏 II
//
// 题目链接：https://leetcode-cn.com/problems/jump-game-ii/
// 标签：数组、贪心算法
// 要点：每次找可以到达的最远位置，不要访问最后一个元素避免不必要的一次跳跃
// 时间复杂度： O(N)
// 空间复杂度： O(1)
//

import Foundation

class Solution {
    func jump(_ nums: [Int]) -> Int {
        var maxPosition = 0
        var step = 0
        var stop = 0
        for i in 0..<nums.count - 1 {
            maxPosition = max(maxPosition, i + nums[i])
            if i == stop {
                stop = maxPosition
                step += 1
            }
        }
        return step
    }
}

// Tests
let s = Solution()
s.jump([2,3,1,1,4]) == 2
s.jump([2,3,0,1,4]) == 2
s.jump([0]) == 0
s.jump([1, 2]) == 1
s.jump([2, 1]) == 1

//: [Next](@next)
