//: [Previous](@previous)

//
// 215. 数组中的第K个最大元素
//
// 题目链接：https://leetcode-cn.com/problems/kth-largest-element-in-an-array/
// 标签：数组、多指针、快速排序
// 要点：考察快速排序，基于怎么调效率都不如直接标准库sort一遍来得快，暂时先采用这个「笨」办法了
//      另外，原地排序sort(by:)要比赋值排序sorted(by:)效率更快
// 时间复杂度：O(NlogN)，sort快排的复杂度
// 空间复杂度：O(N)
//

import Foundation

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        precondition(!nums.isEmpty && k > 0 && k <= nums.count)
//        return nums.sorted(by: >)[k - 1]
        var array = nums
        array.sort(by: >)
        return array[k - 1]
    }
}

// Tests
let s = Solution()
s.findKthLargest([3,2,1,5,6,4], 2)
s.findKthLargest([3,2,3,1,2,4,5,5,6], 4)

//: [Next](@next)
