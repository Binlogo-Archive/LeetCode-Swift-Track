//: [Previous](@previous)

import Foundation

//
// 14. 最长公共前缀
//
// 题目链接：https://leetcode-cn.com/problems/longest-common-prefix/
// 标签：字符串
// 要点：字符串的扫描遍历，字符串API接口应用
// 时间复杂度：O(N)， N = 数组中字符串左右字符数总和
// 空间复杂度：O(1)
//

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        guard !strs.isEmpty else { return "" }

        var prefix = strs.first!
        for string in strs {
            // Think about hasPrefix vs. starts(with:)
            while !string.hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
            }
        }

        return prefix
    }
}

// Tests
let s = Solution()
s.longestCommonPrefix(["flower","flow","flight"]) == "fl"
s.longestCommonPrefix(["dog","racecar","car"]) == ""

//: [Next](@next)
