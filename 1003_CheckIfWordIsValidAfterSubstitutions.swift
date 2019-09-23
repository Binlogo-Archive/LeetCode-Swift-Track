
//
// 1003. 检查替换后的词是否有效
//
// 题目链接：https://leetcode-cn.com/problems/check-if-word-is-valid-after-substitutions/
// 标签：字符串、栈
// 要点：当前字母为c时，栈顶应为b，出栈，栈顶应为a，否则都无效；当前字母不为c时，入栈
// 时间复杂度：O(n)
// 空间复杂度：O(1)

import Foundation

class Solution {
    func isValid(_ S: String) -> Bool {
        var stack = [Character]()
        for char in S {
            if char == "c" {
                if stack.popLast() != "b" {
                    return false
                }
                if stack.popLast() != "a" {
                    return false
                }
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}

// Tests
let s = Solution()
assert(s.isValid("aabcbc"))
assert(s.isValid("abcabcababcc"))
assert(!s.isValid("abccba"))
assert(!s.isValid("cababc"))
