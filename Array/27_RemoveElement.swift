//
// 27. 移除元素
//
// 题目链接：https://leetcode-cn.com/problems/remove-element/
// 标签：数组、双指针
// 要点：考察「数组变换」，使用双指针，一个遍历数组元素，一个在记录最后非指定值的位置
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.isEmpty { return 0 }
        
        var index = 0
        for i in 0 ..< nums.count {
            if nums[i] != val {
                nums[index] = nums[i]
                index += 1
            }
        }
        
        nums.removeLast(nums.count - index)
        
        return nums.count
    }
}

// Tests
let s = Solution()
do {
    var input = [3,2,2,3]
    let newLength = s.removeElement(&input, 3)
    assert(input == [2, 2])
    assert(newLength == 2)
}
