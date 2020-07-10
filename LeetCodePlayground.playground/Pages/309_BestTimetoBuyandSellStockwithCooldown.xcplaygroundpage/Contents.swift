//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var rest = 0
        var sold = 0
        var hold = Int.min
        for current in 0..<prices.count {
            let currentPrice = prices[current]
            let preSold = sold
            let preHold = hold
            hold = max(preHold, rest - currentPrice)
            sold = preHold + currentPrice
            rest = max(rest, preSold)
        }
        return max(rest, sold)
    }
}

// Tests
let s = Solution()
s.maxProfit([1,2,3,0,2]) == 3

//: [Next](@next)
