//: [Previous](@previous)

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Copy = nums1[0..<m]
        var p1 = 0, p2 = 0, p = 0
        while p1 < m && p2 < n {
            if nums1Copy[p1] < nums2[p2] {
                nums1[p] = nums1Copy[p1]
                p1 += 1
            } else {
                nums1[p] = nums2[p2]
                p2 += 1
            }
            p += 1
        }
        if p1 < m { nums1.replaceSubrange(p..<m+n, with: nums1Copy[p1..<m]) }
        if p2 < n { nums1.replaceSubrange(p..<m+n, with: nums2[p2..<n]) }
    }
}

// Tests
let s = Solution()
var nums1 = [1,2,3,0,0,0]
s.merge(&nums1, 3, [2,5,6], 3)
nums1

//: [Next](@next)
