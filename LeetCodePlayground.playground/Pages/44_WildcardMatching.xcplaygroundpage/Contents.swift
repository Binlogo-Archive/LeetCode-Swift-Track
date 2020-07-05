//: [Previous](@previous)

import Foundation

class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let sChars = [Character](s), pChars = [Character](p)
        var dp = [[Bool]](repeating: [Bool](repeating: false, count: p.count + 1), count: s.count + 1)

        dp[0][0] = true
        for i in 0...s.count {
            for j in 0...p.count {
                guard j > 0 else { continue }

                let pCur = pChars[j - 1]
                if pCur != "*" {
                    dp[i][j] = i > 0 && dp[i - 1][j - 1] && (pCur == sChars[i - 1] || pCur == "?")
                } else {
                    var flag = false
                    for k in 0...i {
                        if dp[k][j - 1] {
                            flag = true
                            break
                        }
                    }
                    dp[i][j] = flag || j == 1
                }
            }
        }
        return dp[s.count][p.count]
    }
}

// Tests
let s = Solution()
s.isMatch("aa", "a") == false
s.isMatch("aa", "*") == true

//: [Next](@next)
