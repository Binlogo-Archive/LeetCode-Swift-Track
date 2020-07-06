//: [Previous](@previous)

import Foundation

class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        if obstacleGrid.isEmpty {
            return 0
        }

        let m = obstacleGrid.count, n = obstacleGrid.first!.count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        for i in 0..<m {
            if obstacleGrid[i][0] != 0 {
                break
            }
            dp[i][0] = 1
        }
        for j in 0..<n {
            if obstacleGrid[0][j] != 0 {
                break
            }
            dp[0][j] = 1
        }

        for i in 1..<m {
            for j in 1..<n {
                if obstacleGrid[i][j] == 0 {
                    dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
                }
            }
        }
        return dp[m - 1][n - 1]
    }
}
// Tests
let s = Solution()
s.uniquePathsWithObstacles([
  [0,0,0],
  [0,1,0],
  [0,0,0]
]) == 2

s.uniquePathsWithObstacles([[1]]) == 0

//: [Next](@next)
