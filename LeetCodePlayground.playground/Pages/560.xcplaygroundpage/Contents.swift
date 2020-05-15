//: [Previous](@previous)

import Foundation

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var pre = 0
        var dict = [0: 1]
        for num in nums {
            pre += num
            if let value = dict[pre - k] {
                count += value
            }
            dict[pre] = (dict[pre] ?? 0) + 1
        }
        return count
    }
}

// Tests
let s = Solution()
s.subarraySum([1, 1, 1], 2)
s.subarraySum([0,0,0,0,0,0,0,0,0,0], 0)

//: [Next](@next)
