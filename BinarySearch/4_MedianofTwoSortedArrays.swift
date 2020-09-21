
//
// 4. 寻找两个正序数组的中位数
//
// 给定两个大小为 m 和 n 的正序（从小到大）数组 nums1 和 nums2。
//
// 请你找出这两个正序数组的中位数，并且要求算法的时间复杂度为 O(log(m + n))。
//
// 你可以假设 nums1 和 nums2 不会同时为空。
//
// 题目链接：https://leetcode-cn.com/problems/median-of-two-sorted-arrays/
// 标签：数组 二分查找 分治算法
// 要点：递归二分查找，按奇偶区分中位数计算方式
// 时间复杂度：O(log(m+n))
// 空间复杂度：O(1)
//

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count = nums1.count + nums2.count
        if count % 2 != 0 {
            return _findKth(nums1: nums1, nums2: nums2, k: count / 2 + 1)
        } else {
            return (_findKth(nums1: nums1, nums2: nums2, k: count / 2)
                + _findKth(nums1: nums1, nums2: nums2, k: count / 2 + 1))
                / 2.0
        }
    }

    private func _findKth(nums1: [Int], nums2: [Int], k: Int) -> Double {
        let count1 = nums1.count
        let count2 = nums2.count
        guard count1 <= count2 else {
            return _findKth(nums1: nums2, nums2: nums1, k: k)
        }
        if count1 == 0 {
            return Double(nums2[k - 1])
        }
        if k == 1 {
            return Double(min(nums1[0], nums2[0]))
        }
        // 划分下一个递归迭代
        let i = min(k / 2, count1)
        let j = min(k / 2, count2)

        if nums1[i - 1] < nums2[j - 1] {
            return _findKth(nums1: Array(nums1[i..<count1]), nums2: nums2, k: k - i)
        } else {
            return _findKth(nums1: nums1, nums2: Array(nums2[j..<count2]), k: k - j)
        }
    }
}

// Test
let s = Solution()
s.findMedianSortedArrays([1, 3], [2]) == 2.0
s.findMedianSortedArrays([1, 2], [3, 4]) == 2.5
