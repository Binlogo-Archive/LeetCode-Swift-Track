//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s).filter { $0.isLetter || $0.isWholeNumber }.map { $0.lowercased() }
        var l = 0, r = chars.count - 1
        
        while l < r {
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

//: [Next](@next)
