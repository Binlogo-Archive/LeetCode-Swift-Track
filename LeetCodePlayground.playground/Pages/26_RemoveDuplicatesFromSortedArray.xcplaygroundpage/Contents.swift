//: [Previous](@previous)

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var index = 0
        for i in 1 ..< nums.count {
            if nums[i] != nums[index] {
                index += 1
                nums[index] = nums[i]
            }
        }
        
        nums.removeSubrange((index + 1 ) ..< nums.count)
        
        return nums.count
    }
}

// Tests
let s = Solution()
var inputs = [1,1,2]
s.removeDuplicates(&inputs)
inputs

//: [Next](@next)
