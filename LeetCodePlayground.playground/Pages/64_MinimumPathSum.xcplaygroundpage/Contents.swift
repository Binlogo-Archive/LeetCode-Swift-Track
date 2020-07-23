//: [Previous](@previous)

import Foundation

class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        precondition(!grid.isEmpty)
        let m = grid.count, n = grid[0].count
        var dp = [[Int]](repeating: [Int](repeating: Int.max, count: n + 1), count: m + 1)
        dp[m][n - 1] = 0; dp[m - 1][n - 1] = 0
        for i in (0..<m).reversed() {
            for j in (0..<n).reversed() {
                dp[i][j] = min(dp[i + 1][j], dp[i][j + 1]) + grid[i][j]
            }
        }
        return dp[0][0]
    }
}

/// Tests
let s = Solution()
s.minPathSum([
  [1,3,1],
  [1,5,1],
  [4,2,1]
]) == 7

//: [Next](@next)
