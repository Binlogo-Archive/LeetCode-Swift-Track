//: [Previous](@previous)

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        var index = nums.count
        while left <= right {
            let mid = (right - left) >> 1 + left
            if target <= nums[mid] {
                index = mid
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return index
    }
}

/// Tests
let s = Solution()
s.searchInsert([1,3,5,6], 5) == 2
s.searchInsert([1,3,5,6], 2) == 1
s.searchInsert([1,3,5,6], 7) == 4
s.searchInsert([1,3,5,6], 0) == 0

//: [Next](@next)
