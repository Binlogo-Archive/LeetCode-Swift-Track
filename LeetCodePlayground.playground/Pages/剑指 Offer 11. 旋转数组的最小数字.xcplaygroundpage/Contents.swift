//: [Previous](@previous)

import Foundation

class Solution {
    func minArray(_ numbers: [Int]) -> Int {
        assert(!numbers.isEmpty)
        var left = 0, right = numbers.count - 1
        while left < right {
            let mid = left + (right - left) / 2
            if numbers[mid] < numbers[right] {
                right = mid
            } else if numbers[mid] > numbers[right] {
                left = mid + 1
            } else {
                right -= 1
            }
        }
        return numbers[left]
    }
}

/// Tests
let s = Solution()
s.minArray([3,4,5,1,2]) == 1
s.minArray([2,2,2,0,1]) == 0
s.minArray([1,3,3]) == 1
s.minArray([1,3,3,1]) == 1
s.minArray([3,3,1,3]) == 1

//: [Next](@next)
