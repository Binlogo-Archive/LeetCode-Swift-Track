//: [Previous](@previous)

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sChars = [Character](s), tChars = [Character](t)
        let n = sChars.count, m = tChars.count
        var i = 0, j = 0
        while i < n && j < m {
            if sChars[i] == tChars[j] {
                i += 1
            }
            j += 1
        }
        return i == n
    }
}

// Tests
let s = Solution()
s.isSubsequence("abc", "ahbgdc") == true
s.isSubsequence("axc", "ahbgdc") == false

//: [Next](@next)
