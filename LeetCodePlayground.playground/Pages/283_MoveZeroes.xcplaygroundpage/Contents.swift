//: [Previous](@previous)

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.isEmpty || nums.count == 1 { return }
        
        var index = 0
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                nums[index] = nums[i]
                index += 1
            }
        }

        for i in (index..<nums.count) {
            nums[i] = 0
        }
    }
}

// Tests
let s = Solution()
var input = [0, 1, 0, 3, 12]
s.moveZeroes(&input)
assert(input == [1,3,12,0,0])

//: [Next](@next)
