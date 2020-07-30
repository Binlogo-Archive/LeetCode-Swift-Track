//: [Previous](@previous)

import Foundation

class Solution {
    func integerBreak(_ n: Int) -> Int {
        if n <= 3 {
            return n - 1
        }

        let numCount = n / 3
        let num = n % 3

        if num == 0 {
            return Int(pow(3.0, Double(numCount)))
        } else if num == 1 {
            return Int(pow(3.0, Double(numCount - 1))) * 4
        } else {
            return Int(pow(3.0, Double(numCount))) * 2
        }

    }
}

// Tests
let s = Solution()
s.integerBreak(2) == 1
s.integerBreak(10) == 36

//: [Next](@next)
