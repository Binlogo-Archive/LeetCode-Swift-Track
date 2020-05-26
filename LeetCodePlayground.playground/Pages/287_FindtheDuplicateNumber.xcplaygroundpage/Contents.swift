//: [Previous](@previous)

import Foundation

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = 0, fast = 0
        repeat {
            slow = nums[slow]
            fast = nums[nums[fast]]
        } while (slow != fast)
        slow = 0
        while slow != fast {
            slow = nums[slow]
            fast = nums[fast]
        }
        return slow
    }
}

// Tests
let s = Solution()
s.findDuplicate([1,3,4,2,2]) == 2
s.findDuplicate([3,1,3,4,2]) == 3

//: [Next](@next)
