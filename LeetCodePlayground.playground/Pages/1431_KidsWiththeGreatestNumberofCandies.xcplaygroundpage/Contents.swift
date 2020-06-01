//: [Previous](@previous)

import Foundation

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let originMax = candies.max() else { return [] }
        return candies.map { $0 + extraCandies >= originMax }
    }
}

//: [Next](@next)
