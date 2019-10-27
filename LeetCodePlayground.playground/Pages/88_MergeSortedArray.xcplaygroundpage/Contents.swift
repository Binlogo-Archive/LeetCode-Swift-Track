//: [Previous](@previous)

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m - 1, p2 = n - 1, p = nums1.count - 1
        while p1 >= 0 && p2 >= 0 {
            if nums1[p1] > nums2[p2] {
                nums1[p] = nums1[p1]
                p1 -= 1
            } else {
                nums1[p] = nums2[p2]
                p2 -= 1
            }
            p -= 1
        }
        nums1.replaceSubrange(..<(p2+1), with: nums2[..<(p2+1)])
    }
}

// Tests
let s = Solution()
var nums1 = [1,2,3,0,0,0]
s.merge(&nums1, 3, [2,5,6], 3)
nums1

//: [Next](@next)
