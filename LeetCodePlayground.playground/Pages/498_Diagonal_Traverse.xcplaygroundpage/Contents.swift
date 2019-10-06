//: [Previous](@previous)

import Foundation

class Solution {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        let m = matrix.count
        guard m > 0 else { return [] }
        let n = matrix[0].count
        guard n > 0 else { return [] }
        
        var res = [Int]()
        var x = 0
        var y = 0
        for _ in 0 ..< (m * n) {
            res.append(matrix[x][y])
            if (x+y) % 2 == 0 {
                if y == n - 1 {
                    x += 1
                } else if x == 0 {
                    y += 1
                } else {
                    x -= 1
                    y += 1
                }
            } else {
                if x == m - 1 {
                    y += 1
                } else if y == 0 {
                    x += 1
                } else {
                    x += 1
                    y -= 1
                }
            }
        }
        
        return res
    }
}

// Tests
let s = Solution()
let matrix = [[ 1, 2, 3 ],[ 4, 5, 6 ],[ 7, 8, 9 ]]
assert(s.findDiagonalOrder(matrix) == [1,2,4,7,5,3,6,8,9])

//: [Next](@next)
