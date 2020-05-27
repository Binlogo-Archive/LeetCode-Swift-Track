//: [Previous](@previous)

import Foundation

class Solution {
    func subarraysDivByK(_ A: [Int], _ K: Int) -> Int {
        var record = [0: 1]
        var sum = 0, res = 0
        for element in A {
            sum += element
            let m = (sum % K + K) % K
            if let count = record[m] {
                res += count
            } else {
                record[m] = 0
            }
            record[m]! += 1
        }
        return res
    }

}

// Tests
let s = Solution()
s.subarraysDivByK([4,5,0,-2,-3,1], 5) == 7

//: [Next](@next)
