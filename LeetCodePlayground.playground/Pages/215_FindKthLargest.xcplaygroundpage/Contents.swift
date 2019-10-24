//: [Previous](@previous)

import Foundation

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        precondition(!nums.isEmpty && k > 0 && k <= nums.count)

        let sorted = nums.sorted(by: >)
        return sorted[k - 1]
    }
}

// Tests
let s = Solution()
s.findKthLargest([3,2,1,5,6,4], 2)
s.findKthLargest([3,2,3,1,2,4,5,5,6], 4)

//: [Next](@next)
