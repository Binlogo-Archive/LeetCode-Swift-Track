//: [Previous](@previous)

//
// 1003. 检查替换后的词是否有效
//
// 题目链接：https://leetcode-cn.com/problems/check-if-word-is-valid-after-substitutions/
//

import Foundation

class Solution {
    func isValid(_ S: String) -> Bool {
        var s = S
        while (s.contains("abc")) {
            s = s.replacingOccurrences(of: "abc", with: "")
        }
        return s.isEmpty
    }
}

// Tests
let s = Solution()
assert(s.isValid("aabcbc"))
assert(s.isValid("abcabcababcc"))
assert(!s.isValid("abccba"))
assert(!s.isValid("cababc"))

//: [Next](@next)
