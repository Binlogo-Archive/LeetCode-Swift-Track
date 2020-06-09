//: [Previous](@previous)

import Foundation

/// 与 93_RestoreIPAddresses 要解决的方式非常类似
class Solution {
    func translateNum(_ num: Int) -> Int {
        var result = 0
        _backtrace(String(num), index: 0, segments: [], result: &result)
        return result
    }

    private func _backtrace(_ s: String, index: Int, segments: [String], result: inout Int) {
        if index == s.count {
            result += 1
            return
        }

        let chars = [Character](s)
        for i in 1...2 {
            if index + i > s.count { continue }
            if i != 1 && chars[index] == "0" { continue }
            let segment = String(chars[index..<index+i])
            if Int(segment)! <= 25 {
                _backtrace(s, index: index + i, segments: segments + [segment], result: &result)
            }
        }
    }
}

// Tests
let s = Solution()
s.translateNum(12258) == 5
s.translateNum(506) == 1

//: [Next](@next)
