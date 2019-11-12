//
// 125. 验证回文串
//
// 题目链接：https://leetcode-cn.com/problems/valid-palindrome/
// 标签：数组、双指针、对撞指针
// 要点：指针碰撞，由于数组有序，采用一头一尾双指针，相向遍历数组，跳过非比较字符
//      若相等则继续，不相等则返回 false，直到指针碰撞（l<r），则为回文串
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased())
        var l = 0, r = chars.count - 1
        
        while l < r {
            while !chars[l].isLetter && !chars[l].isNumber && l < r {
                l += 1
            }
            
            while !chars[r].isLetter && !chars[r].isNumber && l < r {
                r -= 1
            }
            
            if chars[l] == chars[r] {
                l += 1; r -= 1
            } else {
                return false
            }
        }
        
        return true
    }
}

// Tests
let s = Solution()
s.isPalindrome("A man, a plan, a canal: Panama")
s.isPalindrome("race a car")
