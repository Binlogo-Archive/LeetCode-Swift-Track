//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var maxProfit = 0
        for current in 1..<prices.count {
            if prices[current] > prices[current - 1] {
                maxProfit += prices[current] - prices[current - 1]
            }
        }
        return maxProfit
    }
}

// Tests
let s = Solution()
s.maxProfit([7,1,5,3,6,4]) == 7

//: [Next](@next)
