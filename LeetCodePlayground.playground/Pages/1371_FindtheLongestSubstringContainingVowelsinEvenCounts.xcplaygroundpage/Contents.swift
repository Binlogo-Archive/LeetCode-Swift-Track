//: [Previous](@previous)

import Foundation

class Solution {
    func findTheLongestSubstring(_ s: String) -> Int {
        var res = 0
        var status = 0
        var pos = [Int](repeating: -1, count: 1 << 5)
        pos[0] = 0
        let chars = [Character](s)
        for i in 0..<chars.count {
            switch chars[i] {
            case "a": status ^= (1<<0)
            case "e": status ^= (1<<1)
            case "i": status ^= (1<<2)
            case "o": status ^= (1<<3)
            case "u": status ^= (1<<4)
            default: break
            }
            if (pos[status]) >= 0 {
                res = max(res, i + 1 - pos[status])
            } else {
                pos[status] = i + 1
            }
        }
        return res
    }
}

// Tests
let s = Solution()
s.findTheLongestSubstring("eleetminicoworoep") == 13
s.findTheLongestSubstring("leetcodeisgreat") == 5
s.findTheLongestSubstring("bcbcbc") == 6

//: [Next](@next)
