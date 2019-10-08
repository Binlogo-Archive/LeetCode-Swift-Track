//: [Previous](@previous)

//
// 118. 杨辉三角
//
// 题目链接：https://leetcode-cn.com/problems/pascals-triangle/
// 标签：数组
// 要点：根据杨辉三角规律迭代生成
// 时间复杂度：O(n^2)
// 空间复杂度：O(n^2)

import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else { return [] }
        
        var triangle = [[Int]]()
        
        triangle.append([1]) // 首行始终为 [1]
        
        for rowIndex in 1..<numRows {
            var row = [Int]()
            var prevRow = triangle[rowIndex - 1]
            
            row.append(1) // 行首始终为 1
            
            for index in 1..<rowIndex {
                row.append(prevRow[index - 1] + prevRow[index])
            }
            
            row.append(1) // 行尾始终为 1
            
            triangle.append(row)
        }
        
        return triangle
    }
}

// Tests
let s = Solution()
let input = 5
let expectation = [
    [1],
    [1,1],
    [1,2,1],
    [1,3,3,1],
    [1,4,6,4,1]
]
assert(s.generate(input) == expectation)

//: [Next](@next)
