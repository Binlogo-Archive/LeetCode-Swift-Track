//
// 66. 加一
//
// 题目链接：https://leetcode-cn.com/problems/plus-one/
// 标签：数组
// 要点：逆序遍历，加一后判断10求余是否为0，不为0则为结果，为0则继续进位，遍历结束仍未返回则添加一位最高位
// 时间复杂度：O(n)
// 空间复杂度：O(1)

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var _digits = digits
        for index in stride(from: _digits.count - 1, through: 0, by: -1) {
            _digits[index] += 1
            _digits[index] = _digits[index] % 10
            if _digits[index] != 0 { return _digits }
        }
        _digits = Array(repeating: 0, count: digits.count + 1)
        _digits[0] = 1
        return _digits
    }
}

// Tests
let s = Solution()
assert(s.plusOne([1, 2, 3]) == [1, 2, 4])
assert(s.plusOne([4,3,2,1]) == [4,3,2,2])