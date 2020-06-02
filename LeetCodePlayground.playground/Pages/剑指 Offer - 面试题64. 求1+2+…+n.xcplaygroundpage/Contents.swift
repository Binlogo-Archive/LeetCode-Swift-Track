//: [Previous](@previous)

import Foundation

/**
 求 1+2+...+n ，要求不能使用乘除法、for、while、if、else、switch、case等关键字及条件判断语句（A?B:C）。
 */

class Solution {
    func sumNums(_ n: Int) -> Int {
        return (1...n).reduce(0, +)
    }
}

// Tests
let s = Solution()
s.sumNums(3) == 6
s.sumNums(9) == 45

//: [Next](@next)
