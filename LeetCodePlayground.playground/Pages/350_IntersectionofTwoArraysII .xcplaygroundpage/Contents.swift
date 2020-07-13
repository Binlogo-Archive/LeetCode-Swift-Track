//: [Previous](@previous)

import Foundation

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        if nums1.count > nums2.count {
            return intersect(nums2, nums1)
        }
        var frenquencyMap = nums1.reduce([:]) { (res, num) -> [Int: Int] in
            var res = res
            if let count = res[num] {
                res[num] = count + 1
            } else {
                res[num] = 1
            }
            return res
        }
        var res = [Int]()
        for num in nums2 {
            if let count = frenquencyMap[num], count > 0 {
                res.append(num)
                frenquencyMap[num] = count - 1
            }
        }
        return res
    }
}

// Tests
let s = Solution()
s.intersect([1,2,2,1], [2,2]) == [2,2]
s.intersect([4,9,5], [9,4,9,8,4]) == [4,9]

//: [Next](@next)
