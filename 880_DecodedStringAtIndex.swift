//
// 880. 索引处的解码字符串
//
// 题目链接：https://leetcode-cn.com/problems/decoded-string-at-index/
// 标签：字符串、余数
// 要点：TBD
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func decodeAtIndex(_ S: String, _ K: Int) -> String {
        var size = 0
        
        for char in S {
            if char.isNumber {
                guard let digit = Int(String(char)) else { fatalError() }
                size *= digit
            } else if char.isLetter {
                size += 1
            } else {
                return ""
            }
        }
        
        var magicK = K
        for char in S.reversed() {
            magicK %= size
            if magicK == 0 && char.isLetter {
                return String(char)
            }
            if char.isNumber {
                guard let digit = Int(String(char)) else { fatalError() }
                size /= digit
            } else {
                size -= 1
            }
        }
        
        return ""
    }
}

// Tests
let s = Solution()
assert(s.decodeAtIndex("leet2code3", 10) == "o")
assert(s.decodeAtIndex("ha22", 5) == "h")
assert(s.decodeAtIndex("a2345678999999999999999", 1) == "a")