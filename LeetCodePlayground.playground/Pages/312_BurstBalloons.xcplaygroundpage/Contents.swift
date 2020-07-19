//: [Previous](@previous)

import Foundation

class Solution {
    func maxCoins(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        let nums = [1] + nums + [1]
        var table = [[Int]](repeating: [Int](repeating: 0, count: nums.count), count: nums.count)
        for len in 1...(nums.count - 2) {
            for i in 1...(nums.count - 1 - len) {
                let j = i + len - 1
                for k in i...j {
                    table[i][j] = max(
                        table[i][j],
                        table[i][k - 1] + nums[i - 1] * nums[k] * nums[j + 1]  + table[k + 1][j]
                    );
                }
            }
        }
        return table[1][nums.count - 2]
    }
}

//: [Next](@next)
