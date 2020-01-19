
//
// 20. 有效的括号
//
// 题目链接：https://leetcode-cn.com/problems/valid-parentheses/
// 标签：栈、字符串
// 要点：栈的特点，考虑入栈、出栈条件，以及最终有效性条件
// 时间复杂度：O(N)
// 空间复杂度：O(N)
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [String] = []
        let paren_pairs = [
            ")":"(",
            "]": "[",
            "}": "{"
        ]
        for c in s {
            if !paren_pairs.keys.contains("\(c)") {
                stack.append("\(c)")
            } else if stack.isEmpty || paren_pairs["\(c)"] != stack.removeLast() {
                return false
            }
        }
        return stack.isEmpty
    }
}
