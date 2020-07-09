//: [Previous](@previous)

import Foundation

class Solution {
    func divingBoard(_ shorter: Int, _ longer: Int, _ k: Int) -> [Int] {
        if k == 0 {
            return []
        }
        if shorter == longer {
            return [shorter * k]
        }
        /// 220ms & 26.1MB
        var lengths = [Int]()
        for i in 0...k {
            lengths.append(shorter * (k - i) + longer * i)
        }
        return lengths
        /// 376ms & 24.7MB
//        return (0...k).map { i in shorter * (k - i) + longer * i }
    }
}

// Tests
let s = Solution()
s.divingBoard(1, 2, 3) == [3, 4, 5, 6]

//: [Next](@next)
