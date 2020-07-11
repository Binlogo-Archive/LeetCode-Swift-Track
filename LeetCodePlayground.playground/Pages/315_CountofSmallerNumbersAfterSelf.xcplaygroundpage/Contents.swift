//: [Previous](@previous)

import Foundation

class Solution {
    func countSmaller(_ nums: [Int]) -> [Int] {
        var counts: [Int] = []
        for i in 0..<nums.count {
            var count = 0
            for j in i+1..<nums.count {
                if nums[j] < nums[i] {
                    count += 1
                }
            }
            counts.append(count)
        }
        return counts
    }
}

// Tests
let s = Solution()
s.countSmaller([5,2,6,1]) == [2,1,1,0] 

//: [Next](@next)
