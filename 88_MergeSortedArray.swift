//
// 88. 合并两个有序数组
//
// 题目链接：https://leetcode-cn.com/problems/merge-sorted-array/
// 标签：数组、多指针
// 要点：逆序遍历，避免拷贝增加不必要的空间复杂度
//      注意使用双指针即可，以及避免用到 replaceSubrange(:with:)
// 时间复杂度：O(M+N)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m - 1, p2 = n - 1
        while p1 >= 0 || p2 >= 0 {
            if p2 < 0 || (p1 >= 0 && nums1[p1] > nums2[p2]) {
                nums1[p1 + p2 + 1] = nums1[p1]
                p1 -= 1
            } else {
                nums1[p1 + p2 + 1] = nums2[p2]
                p2 -= 1
            }
        }
    }
}

// Tests
let s = Solution()
var nums1 = [1,2,3,0,0,0]
s.merge(&nums1, 3, [2,5,6], 3)
nums1
