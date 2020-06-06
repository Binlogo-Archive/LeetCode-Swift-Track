//: [Previous](@previous)

import Foundation

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        var result = 0

        for num in nums {
            if numSet.contains(num) {
                numSet.remove(num)
                result = max(1 + consecutive(&numSet, num, 1) + consecutive(&numSet, num, -1), result)
            }
        }

        return result
    }

    private func consecutive(_ set: inout Set<Int>, _ num: Int, _ step: Int) -> Int {
        var length = 0
        var num = num + step

        while set.contains(num) {
            set.remove(num)
            length += 1
            num = num + step
        }

        return length
    }
}

//: [Next](@next)
