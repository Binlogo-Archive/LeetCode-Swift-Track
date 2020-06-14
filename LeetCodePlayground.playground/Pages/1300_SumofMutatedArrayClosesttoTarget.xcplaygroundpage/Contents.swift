//: [Previous](@previous)

import Foundation

class Solution {
    func findBestValue(_ arr: [Int], _ target: Int) -> Int {
        let sortedArr = arr.sorted()
        let count = arr.count
        var sum = 0
        for i in 0..<count {
            let average = (target - sum) / (count - i)
            if sortedArr[i] >= average {
                let curAverage = Double(target - sum) / Double(count - i)
                if curAverage - Double(average) > 0.5 {
                    return average + 1
                } else {
                    return average
                }
            }
            sum += sortedArr[i]
        }
        return sortedArr[count - 1]
    }
}

/// Tests
let s = Solution()
s.findBestValue([4,9,3], 10) == 3

//: [Next](@next)
