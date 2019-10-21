//
// 75. Sort Colors
//
// 题目链接：https://leetcode-cn.com/problems/sort-colors/
// 标签：数组、多指针
// 要点：考察多指针的应用，一个指针指向「小端」，一个指针指向「大端」，一个指针遍历数组
//      注意遍历指针交换时的动作，仅在与小端进行交换时前进，因为与大端交换过来的元素未遍历过
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func sortColors(_ nums: inout [Int]) {
        if nums.isEmpty { return }
        
        var current = 0, little = 0, big = nums.count - 1
        while current <= big {
            if nums[current] == 0 {
                nums.swapAt(little, current)
                little += 1
                current += 1
            } else if nums[current] == 2 {
                nums.swapAt(big, current)
                big -= 1
            } else {
                current += 1
            }
        }
    }
}

// Tests
let s = Solution()
do {
    var input = [2,0,2,1,1,0]
    let expectOutput = [0,0,1,1,2,2]
    s.sortColors(&input)
    input
    assert(input == expectOutput)
}

do {
    var input = [1, 2, 0]
    let expectOutput = [0, 1, 2]
    s.sortColors(&input)
    input
//    assert(input == expectOutput)
}
