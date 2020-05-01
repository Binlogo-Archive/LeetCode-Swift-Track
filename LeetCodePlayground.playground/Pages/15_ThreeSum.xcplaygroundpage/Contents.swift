//: [Previous](@previous)

import Foundation

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        if nums.count < 3 { return [] }

        let nums = nums.sorted(by: <)
        var res = [[Int]]()

        for i in 0..<nums.count-2 {

            if i > 0 && nums[i] == nums[i - 1] { continue }

            var left = i + 1
            var right = nums.count - 1

            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    res.append([nums[i], nums[left], nums[right]])
                    while (left < right && nums[left] == nums[left + 1]) {
                        left += 1
                    }
                    while (left < right && nums[right] == nums[right - 1]) {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }
            }
        }

        return res
    }
}

// Tests

let s = Solution()
s.threeSum([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
s.threeSum([0,0,0,0]) == [[0, 0, 0]]
s.threeSum([-2,0,1,1,2]) == [[-2,0,2],[-2,1,1]]

//: [Next](@next)
