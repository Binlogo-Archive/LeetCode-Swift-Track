//: [Previous](@previous)

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        var p = 0, q = 0, r = 1
        for _ in 1...n {
            p = q
            q = r
            r = p + q
        }
        return r
    }

}

/// Tests
let s = Solution()
s.climbStairs(2) == 2
s.climbStairs(3) == 3

//: [Next](@next)
