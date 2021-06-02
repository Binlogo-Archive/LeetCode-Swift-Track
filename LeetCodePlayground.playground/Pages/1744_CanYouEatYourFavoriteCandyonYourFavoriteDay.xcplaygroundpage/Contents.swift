//: [Previous](@previous)

import Foundation

class Solution {
    func canEat(_ candiesCount: [Int], _ queries: [[Int]]) -> [Bool] {
        // 前缀和
        let sums = candiesCount.reduce(into: [Int]()) { result, count in
            guard let lastSum = result.last else {
                result.append(count)
                return
            }
            result.append(lastSum + count)
        }
        
        let result = queries.map { query -> Bool in
            let (favoriteType, favoriteDay, dailyCap) = (query[0], query[1], query[2])
            let x1 = favoriteDay + 1
            let y1 = (favoriteDay + 1) * dailyCap
            let x2 = favoriteType == 0 ? 1 : sums[favoriteType - 1] + 1
            let y2 = sums[favoriteType]

            return !(x1 > y2 || y1 < x2)
        }
        
        return result
    }
}

// Tests
let solution = Solution()
solution.canEat([7,4,5,3,8], [[0,2,2],[4,2,4],[2,13,1000000000]])

//: [Next](@next)
