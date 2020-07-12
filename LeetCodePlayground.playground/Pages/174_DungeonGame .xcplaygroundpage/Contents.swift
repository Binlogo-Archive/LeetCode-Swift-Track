//: [Previous](@previous)

import Foundation

class Solution {
    func calculateMinimumHP(_ dungeon: [[Int]]) -> Int {
        guard !dungeon.isEmpty else { return -1 }
        let n = dungeon.count, m = dungeon[0].count
        var dp = [[Int]].init(repeating: [Int](repeating: .max, count: m + 1), count: n + 1)
        dp[n][m - 1] = 1
        dp[n - 1][m] = 1
        for i in (0..<n).reversed() {
            for j in (0..<m).reversed() {
                let minN = min(dp[i + 1][j], dp[i][j + 1])
                dp[i][j] = max(minN - dungeon[i][j], 1)
            }
        }
        return dp[0][0]
    }
}

//: [Next](@next)
