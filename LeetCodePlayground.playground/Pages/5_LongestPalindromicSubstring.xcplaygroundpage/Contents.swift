//: [Previous](@previous)

import Foundation

// TODO: 没太掌握，待梳理
class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }

        let sChars = Array(s)
        var maxLen = 0, start = 0

        for i in 0..<sChars.count {
            searchPalindrome(sChars, i, i, &start, &maxLen)
            searchPalindrome(sChars, i, i + 1, &start, &maxLen)
        }

        return String(sChars[start..<start + maxLen])
    }

    private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int, _ start: inout Int, _ maxLen: inout Int) {
        var l = l, r = r

        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            l -= 1
            r += 1
        }

        if maxLen < r - l - 1 {
            start = l + 1
            maxLen = r - l - 1
        }
    }
}

// Tests
let s = Solution()
s.longestPalindrome("babad") == "bab"
s.longestPalindrome("cbbd") == "bb"

//: [Next](@next)
