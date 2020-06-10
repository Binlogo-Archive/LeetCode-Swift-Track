//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        var nums = [Int]()
        var _x = x
        while _x != 0 {
            let num = _x % 10
            _x = _x / 10
            nums.append(num)
        }
        return _isPalindrome(nums: nums)
    }

    func _isPalindrome(nums: [Int]) -> Bool {
        guard !nums.isEmpty else { return true }
        var left = 0, right = nums.count - 1
        while left < right {
            if nums[left] != nums[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}

/// Tests
let s = Solution()
s._isPalindrome(nums: [1, 2, 1]) == true
s.isPalindrome(121) == true
s.isPalindrome(-121) == false
s.isPalindrome(10) == false

//: [Next](@next)
