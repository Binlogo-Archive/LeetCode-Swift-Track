//: [Previous](@previous)

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.isEmpty { return 0 }
        
        var index = 0
        for i in 0 ..< nums.count {
            if nums[i] != val {
                nums[index] = nums[i]
                index += 1
            }
        }
        
        nums.removeLast(nums.count - index)
        
        return nums.count
    }
}

// Tests
let s = Solution()
do {
    var input = [3,2,2,3]
    let newLength = s.removeElement(&input, 3)
    assert(input == [2, 2])
    assert(newLength == 2)
}


//: [Next](@next)
