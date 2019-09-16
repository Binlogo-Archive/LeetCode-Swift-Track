//: [Previous](@previous)

//
// 151. 翻转字符串里的单词
//
// 题目链接：https://leetcode-cn.com/problems/reverse-words-in-a-string/
// 标签：字符串
// 要点：以空字符进行拆分成数组->翻转->拼接
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ")
            .reversed()
            .joined(separator: " ")
    }
}

// Tests
let s = Solution()
assert(s.reverseWords("the sky is blue") == "blue is sky the")
assert(s.reverseWords("  hello world!  ") == "world! hello")
assert(s.reverseWords("a good   example") == "example good a")

//: [Next](@next)
