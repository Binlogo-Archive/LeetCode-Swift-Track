//: [Previous](@previous)

import Foundation

class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        if p.isEmpty { return s.isEmpty }

        let signIndex = p.index(p.startIndex, offsetBy: 1)
        let firstCharacterMatch = s.first == p.first || p.first == "."

        if p.count >= 2 && p[signIndex] == "*" {
            return isMatch(s, String(p[p.index(p.startIndex, offsetBy: 2)..<p.endIndex]))
                || (firstCharacterMatch
                    && !s.isEmpty
                    && isMatch(String(s[s.index(s.startIndex, offsetBy: 1)..<s.endIndex]), p))
        } else {
            return !s.isEmpty
                && (firstCharacterMatch
                    && isMatch(String(s[s.index(s.startIndex, offsetBy: 1)..<s.endIndex]), String(p[p.index(p.startIndex, offsetBy: 1)..<p.endIndex])))
        }
    }
}

/// Test
let s = Solution()
s.isMatch("aa", "a") == false
s.isMatch("aa", "a*") == true
s.isMatch("ab", ".*") == true

//: [Next](@next)
