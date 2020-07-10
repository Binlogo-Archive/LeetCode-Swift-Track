//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var minPrice = prices.first!
        var maxProfit = 0
        for current in 1..<prices.count {
            let currentPrice = prices[current]
            if currentPrice < minPrice {
                minPrice = currentPrice
            } else if currentPrice - minPrice > maxProfit {
                maxProfit = currentPrice - minPrice
            }
        }
        return maxProfit
    }
}

// Tests
let s = Solution()
s.maxProfit([7,1,5,3,6,4]) == 5

//: [Next](@next)
