//: [Previous](@previous)

import Foundation

//
// 695. 岛屿的最大面积
//
// 题目链接：https://leetcode-cn.com/problems/max-area-of-island/
// 标签：数组、深度优先搜索
// 要点：贪心
// 时间复杂度： O(M * N)
// 空间复杂度： O(M * N)
//

class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var maxArea = 0
        var grid = grid
        for (i, row) in grid.enumerated() {
            for j in 0..<row.count {
                maxArea = max(backtrack(&grid, row: i, column: j), maxArea)
            }
        }
        return maxArea
    }

    private func backtrack(_ grid: inout [[Int]], row: Int, column: Int) -> Int {

        if row < 0 || column < 0
            || row == grid.count || column == grid[0].count
            || grid[row][column] != 1 {
            return 0
        }
        // 为了确保每个土地访问不超过一次，我们每次经过一块土地时，将这块土地的值置为 0。这样我们就不会多次访问同一土地。
        grid[row][column] = 0
        var area = 1
        for (i, j) in [(0, 1), (0, -1), (1, 0), (-1, 0)] {
            let nextRow = row + i
            let nextColumn = column + j
            area += backtrack(&grid, row: nextRow, column: nextColumn)
        }
        return area
    }
}

/// Tests
let s = Solution()
s.maxAreaOfIsland([
    [0,0,1,0,0,0,0,1,0,0,0,0,0],
    [0,0,0,0,0,0,0,1,1,1,0,0,0],
    [0,1,1,0,1,0,0,0,0,0,0,0,0],
    [0,1,0,0,1,1,0,0,1,0,1,0,0],
    [0,1,0,0,1,1,0,0,1,1,1,0,0],
    [0,0,0,0,0,0,0,0,0,0,1,0,0],
    [0,0,0,0,0,0,0,1,1,1,0,0,0],
    [0,0,0,0,0,0,0,1,1,0,0,0,0]
]) == 6

s.maxAreaOfIsland([[0,0,0,0,0,0,0,0]]) == 0

//: [Next](@next)
