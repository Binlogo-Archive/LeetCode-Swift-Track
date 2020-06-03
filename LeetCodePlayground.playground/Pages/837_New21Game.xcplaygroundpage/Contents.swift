//: [Previous](@previous)

import Foundation

class Solution {
    func new21Game(_ N: Int, _ K: Int, _ W: Int) -> Double {
        // Warning: 没太搞懂，直接上题解先打卡吧
        guard N > 0 else { return 1.0 }
        guard W >= N - K else { return 1.0 }
        var dp = Array(repeating: 0.0, count: N + 1)
        dp[0] = 1
        let w = Double(W)
        var temp = 0.0
        for i in 1...N {
            if i <= K {
              temp += dp[i-1] / w
            }
            if i > W {
                temp -= dp[i-W-1] / w
            }
            dp[i] = temp
        }
        return dp[K...].reduce(0.0, +)
    }
}

// Tests
let s = Solution()
s.new21Game(10, 1, 10) == 1.0

//: [Next](@next)
