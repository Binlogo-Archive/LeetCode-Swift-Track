//: [Previous](@previous)

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
    var isVowel: Bool {
        let lower = lowercased()
        return "a" == lower || "e" == lower || "i" == lower || "o" == lower || "u" == lower
    }
}

// Tests
let s = Solution()
s.reverseVowels("hello") == "holle"
s.reverseVowels("leetcode") == "leotcede"

//: [Next](@next)
