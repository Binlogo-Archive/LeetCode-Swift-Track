//: [Previous](@previous)

import Foundation

class Solution {
    func findLength(_ A: [Int], _ B: [Int]) -> Int {
        var res = 0
        var dp = [[Int]](repeating: [Int](repeating: 0, count: B.count + 1), count: A.count + 1)
        for i in (0..<A.count).reversed() {
            for j in (0..<B.count).reversed() {
                dp[i][j] = A[i] == B[j] ? dp[i + 1][j + 1] + 1 : 0
                res = max(res, dp[i][j])
            }
        }
        return res
    }
}

// Tests
let s = Solution()
s.findLength([1,2,3,2,1], [3,2,1,4,7]) == 3

//: [Next](@next)
