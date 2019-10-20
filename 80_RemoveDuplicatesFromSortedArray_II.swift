//
// 80. 删除排序数组中的重复项 II
//
// 题目链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/
// 标签：数组、双指针
// 要点：与 26 题类似，考察「数组变换」，使用双指针，一个遍历数组元素，一个在记录最后非重复项，移除后续（index+1）的原有项
//      变化点在于双指针之间的「距离」，因此额外定义最多可出现次数，就可以直接拓展解决更多出现次数的类似问题
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

private let duplicatesLimit = 2
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= duplicatesLimit { return nums.count }
        
        var index = duplicatesLimit - 1
        for i in duplicatesLimit ..< nums.count {
            if nums[i] != nums[index - 1] {
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
var input = [1,1,1,2,2,3]
s.removeDuplicates(&input) == 6
input == [1,1,2,2,3]
