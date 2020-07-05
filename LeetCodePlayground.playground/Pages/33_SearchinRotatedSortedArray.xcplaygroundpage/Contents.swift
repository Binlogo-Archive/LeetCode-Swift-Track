//: [Previous](@previous)

import Foundation

//
// 33. 搜索旋转排序数组
//
// 题目链接：https://leetcode-cn.com/problems/search-in-rotated-sorted-array/
// 标签：数组、二分查找
// 要点：局部有序，边界细节的把控
// 时间复杂度： O(logN)
// 空间复杂度： O(1)
//

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        return binarySearch(nums, target: target, range: nums.startIndex..<nums.endIndex)
    }

    private func binarySearch(_ nums: [Int], target: Int, range: Range<Int>) -> Int {

        guard range.endIndex > range.startIndex else { return -1 }

        let middle = nums.index(range.startIndex, offsetBy: (range.endIndex - range.startIndex) / 2)
        
        if nums[middle] == target {
            return middle
        } else if nums.first! <= nums[middle] {
            if target >= nums.first! && target < nums[middle] {
                return binarySearch(nums, target: target, range: range.startIndex..<middle)
            } else {
                return binarySearch(nums, target: target, range: (middle + 1)..<range.endIndex)
            }
        } else {
            if target > nums[middle] && target <= nums.last! {
                return binarySearch(nums, target: target, range: (middle + 1)..<range.endIndex)
            } else {
                return binarySearch(nums, target: target, range: range.startIndex..<middle)
            }
        }
    }
}

// Tests
let s = Solution()
s.search([4,5,6,7,0,1,2], 0) == 4
s.search([4,5,6,7,0,1,2], 3) == -1
s.search([3,1], 2) == -1
s.search([], 1) == -1

//: [Next](@next)
