//: [Previous](@previous)

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var _digits = digits
        for index in stride(from: _digits.count - 1, through: 0, by: -1) {
            _digits[index] += 1
            _digits[index] = _digits[index] % 10
            if _digits[index] != 0 { return _digits }
        }
        _digits = Array(repeating: 0, count: digits.count + 1)
        _digits[0] = 1
        return _digits
    }
}

// Tests
let s = Solution()
assert(s.plusOne([1, 2, 3]) == [1, 2, 4])
assert(s.plusOne([4,3,2,1]) == [4,3,2,2])

//: [Next](@next)
