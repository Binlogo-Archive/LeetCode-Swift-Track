//: [Previous](@previous)

import Foundation

class Solution {
    func sortColors(_ nums: inout [Int]) {
        if nums.isEmpty { return }
        
        var current = 0, little = 0, big = nums.count - 1
        while current <= big {
            if nums[current] == 0 {
                nums.swapAt(little, current)
                little += 1
                current += 1
            } else if nums[current] == 2 {
                nums.swapAt(big, current)
                big -= 1
            } else {
                current += 1
            }
        }
    }
}

// Tests
let s = Solution()
do {
    var input = [2,0,2,1,1,0]
    let expectOutput = [0,0,1,1,2,2]
    s.sortColors(&input)
    input
    assert(input == expectOutput)
}

do {
    var input = [1, 2, 0]
    let expectOutput = [0, 1, 2]
    s.sortColors(&input)
    input
//    assert(input == expectOutput)
}


//: [Next](@next)
