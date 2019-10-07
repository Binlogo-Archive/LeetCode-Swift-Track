//: [Previous](@previous)

import Foundation

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty { return [] }
        
        var res = [Int]()
        
        var startX = 0
        var endX = matrix.count - 1
        var startY = 0
        var endY = matrix[0].count - 1
        
        while true {
            // top
            for i in startY...endY {
                res.append(matrix[startX][i])
            }
            startX += 1
            if startX > endX {
                break
            }
            
            // right
            for i in startX...endX {
                res.append(matrix[i][endY])
            }
            endY -= 1
            if startY > endY {
                break
            }
            
            // bottom
            for i in stride(from: endY, through: startY, by: -1) {
                res.append(matrix[endX][i])
            }
            endX -= 1
            if startX > endX {
                break
            }
            
            // left
            for i in stride(from: endX, through: startX, by: -1) {
                res.append(matrix[i][startY])
            }
            startY += 1
            if startY > endY {
                break
            }
        }
        
        return res
    }
}

// Tests
let s = Solution()
let input1 = [
    [ 1, 2, 3 ],
    [ 4, 5, 6 ],
    [ 7, 8, 9 ]
]
assert(s.spiralOrder(input1) == [1,2,3,6,9,8,7,4,5])

//: [Next](@next)
