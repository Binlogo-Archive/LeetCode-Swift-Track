//: [Previous](@previous)

import Foundation

//
// 1014. 最佳观光组合
//
// 题目链接：https://leetcode-cn.com/problems/best-sightseeing-pair/
//

class Solution {
    func maxScoreSightseeingPair(_ A: [Int]) -> Int {
        var res = 0
        var maxScore = A.first ?? 0 + 0

        for j in 1..<A.count {
            res = max(res, maxScore + A[j] - j)
            maxScore = max(maxScore, A[j] + j)
        }
        return res
    }
}

/// Tests
let s = Solution()
s.maxScoreSightseeingPair([8, 1, 5, 2, 6]) == 11

//: [Next](@next)
