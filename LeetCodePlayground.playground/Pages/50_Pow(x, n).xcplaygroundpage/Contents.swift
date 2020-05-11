//: [Previous](@previous)

import Foundation

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        return n >= 0 ? _helper(x, n: UInt64(n)) : 1.0 / _helper(x, n: UInt64(-n))
    }

    private func _helper(_ x: Double, n: UInt64) -> Double {
        var res = 1.0
        var xContribute = x
        var n = n
        while n > 0 {
            if n % 2 == 1 {
                res = res * xContribute
            }
            xContribute *= xContribute
            n /= 2
        }
        return res
    }
}

//: [Next](@next)
