//: [Previous](@previous)

import Foundation

//
// 983. 最低票价
//
// 题目链接：https://leetcode-cn.com/problems/minimum-cost-for-tickets/
// 标签：动态规划
// 要点：明确状态转移方程，数组储存状态转移
//      dp(i)=min{cost(j)+dp(i+j)},j∈{1,7,30}
// 时间复杂度： O(W), W 为最大旅行天数
// 空间复杂度： O(W), W 为最大旅行天数
//

class Solution {
    func mincostTickets(_ days: [Int], _ costs: [Int]) -> Int {
        precondition(costs.count == 3)
        guard let last = days.last else { return 0 }
        var dp = [Int](repeating: 0, count: last + 1)
        var day = 0
        for i in 1..<last + 1 {
            if i != days[day] {
                dp[i] = dp[i-1]
            } else {
                let costFor1  = dp[max(0, i - 1)] + costs[0]
                let costFor7  = dp[max(0, i - 7)] + costs[1]
                let costFor30 = dp[max(0, i - 30)] + costs[2]
                dp[i] = min(costFor1, costFor7, costFor30)
                day += 1
            }
        }
        return dp.last ?? 0
    }
}

// Tests
let s = Solution()
s.mincostTickets([1,4,6,7,8,20], [2,7,15]) == 11
s.mincostTickets([1,2,3,4,5,6,7,8,9,10,30,31], [2, 7, 15]) == 17

//: [Next](@next)
