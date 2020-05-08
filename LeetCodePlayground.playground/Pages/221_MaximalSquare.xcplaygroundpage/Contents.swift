//: [Previous](@previous)

import Foundation

//
// 221. 最大正方形
//
// 题目链接：https://leetcode-cn.com/problems/maximal-square/
// 标签：动态规划
// 要点：明确状态转移方程，数组储存状态转移
//      dp(i,j)=min(dp(i−1,j),dp(i−1,j−1),dp(i,j−1))+1
// 时间复杂度： O(M * N)
// 空间复杂度： O(M * N)
//

class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {

        guard let first = matrix.first else { return 0 }

        var dp = matrix.map { row in row.map { _ in 0 } }
        var maximalSize = 0
        for i in 0..<matrix.count {
            for j in 0..<first.count {
                if matrix[i][j] == "1" {
                    if i == 0 || j == 0 {
                        dp[i][j] = 1
                    } else {
                        dp[i][j] = min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]) + 1
                    }
                    maximalSize = max(maximalSize, dp[i][j])
                }
            }
        }
        return maximalSize * maximalSize
    }
}

//: [Next](@next)
