//: [Previous](@previous)

import Foundation

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        if s.isEmpty { return true }
        if s.count < 3 { return true }

        let chars = [Character](s)
        var left = 0
        var right = s.count - 1

        while left < right {
            if chars[left] == chars[right] {
                left += 1
                right -= 1
            } else {
                func _valid(low: Int, high: Int) -> Bool {
                    let mid = low + (high - low) / 2
                    for i in low...mid {
                        if chars[i] != chars[high - (i - low)] {
                            return false
                        }
                    }
                    return true
                }
                return _valid(low: left + 1, high: right) || _valid(low: left, high: right - 1)
            }
        }

        return true
    }
}

// Tests
let s = Solution()
s.validPalindrome("aba") == true
s.validPalindrome("abca") == true
s.validPalindrome("abc") == false
s.validPalindrome("eeccccbebaeeabebccceea") == false
s.validPalindrome("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga") == true

//: [Next](@next)
