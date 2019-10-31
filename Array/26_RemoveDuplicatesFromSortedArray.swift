//
// 26. 删除排序数组中的重复项
//
// 题目链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/
// 标签：数组、双指针
// 要点：考察「数组变换」，使用双指针，一个遍历数组元素，一个在记录最后非重复项，移除后续（index+1）的原有项
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var index = 0
        for i in 1 ..< nums.count {
            if nums[i] != nums[index] {
                index += 1
                nums[index] = nums[i]
            }
        }
        
        nums.removeSubrange((index + 1 ) ..< nums.count)
        
        return nums.count
    }
}

// Tests
let s = Solution()
var inputs = [1,1,2]
assert(s.removeDuplicates(&inputs) == 2)
assert(inputs == [1, 2])
