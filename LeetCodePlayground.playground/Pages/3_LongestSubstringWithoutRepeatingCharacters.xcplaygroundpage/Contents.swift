//: [Previous](@previous)

import Foundation

//
// 3. 无重复字符的最长子串
//
// 题目链接：https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/
// 标签：哈希表、双指针、字符串、滑动窗口
// 要点：前后双指针，滑动窗口，计算最大值
// 时间复杂度：O(N)
// 空间复杂度：O(k), k = min(m, n)
//

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        guard !s.isEmpty else { return 0 }

        let chars = [Character](s)
        var maxLenth = 0
        var set = Set<Character>()
        var startIndex = 0
        for i in 0 ..< s.count {
            let current = chars[i]
            if set.contains(current) {
                maxLenth = max(maxLenth, i - startIndex)
                while chars[startIndex] != current {
                    set.remove(chars[startIndex])
                    startIndex += 1
                }
                startIndex += 1
            } else {
                set.insert(current)
            }
        }

        return max(maxLenth, chars.count - startIndex)
    }
}

class Solution2 {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        guard !s.isEmpty else { return 0 }

        let chars = [Character](s)
        var (left, right, maxLength) = (0, 0, 0)
        var set = Set<Character>()
        while right < chars.count {
            if set.contains(chars[right]) {
                set.remove(chars[left])
                left += 1
            } else {
                set.insert(chars[right])
                right += 1
                maxLength = max(maxLength, right - left)
            }
        }
        return maxLength
    }
}

// Tests

let s = Solution()
s.lengthOfLongestSubstring("abcabcbb") == 3
s.lengthOfLongestSubstring("bbbbb") == 1
s.lengthOfLongestSubstring("pwwkew") == 3
s.lengthOfLongestSubstring("a") == 1
s.lengthOfLongestSubstring(" ") == 1
s.lengthOfLongestSubstring("tmmzuxt") == 5

let s2 = Solution2()
s2.lengthOfLongestSubstring("abcabcbb") == 3
s2.lengthOfLongestSubstring("bbbbb") == 1
s2.lengthOfLongestSubstring("pwwkew") == 3
s2.lengthOfLongestSubstring("a") == 1
s2.lengthOfLongestSubstring(" ") == 1
s2.lengthOfLongestSubstring("tmmzuxt") == 5

//: [Next](@next)
