//
// 283. 移动零
//
// 题目链接：https://leetcode-cn.com/problems/move-zeroes/
// 标签：数组、双指针
// 要点：考察「数组变换」，使用双指针，一个遍历数组元素，一个在记录最后非零元素索引位置
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.isEmpty || nums.count == 1 { return }
        
        var index = 0
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                nums.swapAt(index, i)
                index += 1
            }
        }

        for i in (index..<nums.count) {
            nums[i] = 0
        }
    }
}

// Tests
let s = Solution()
var input = [0, 1, 0, 3, 12]
s.moveZeroes(&input)
assert(input == [1,3,12,0,0])
