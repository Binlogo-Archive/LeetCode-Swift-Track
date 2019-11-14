//
// 345. 翻转字符串中的元音字母
//
// 题目链接：https://leetcode-cn.com/problems/reverse-vowels-of-a-string/
// 标签：数组、双指针、对撞指针
// 要点：指针碰撞，若不为元音则移动指针，每次迭代交换元音
// 备注：isVowel的写法与效率
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

import Foundation

class Solution {
    func reverseVowels(_ s: String) -> String {
        var chars = Array(s)
        var left = 0, right = chars.count - 1
        while left < right {
            while !chars[left].isVowel && left < right {
                left += 1
            }
            while !chars[right].isVowel && left < right {
                right -= 1
            }
            chars.swapAt(left, right)
            left += 1; right -= 1
        }
        return String(chars)
    }
}

extension Character {
    // Discussion: `["a", "e", "i", "o", "u"].contains(lowercased())`?
    // 写法更简洁但运行更慢: 180ms vs 88ms
    var isVowel: Bool {
        let lower = lowercased()
        return "a" == lower || "e" == lower || "i" == lower || "o" == lower || "u" == lower
    }
}

// Tests
let s = Solution()
s.reverseVowels("hello") == "holle"
s.reverseVowels("leetcode") == "leotcede"
