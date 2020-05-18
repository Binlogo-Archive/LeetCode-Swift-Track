//: [Previous](@previous)

import Foundation

class Solution {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var edges = [[Int]](repeating: [], count: numCourses)
        var inDegree = [Int](repeating: 0, count: numCourses)
        var result = [Int]()


        for info in prerequisites {
            edges[info[1]].append(info[0])
            inDegree[info[0]] += 1
        }

        var queue = [Int]()
        for (index, degree) in inDegree.enumerated() {
            if degree == 0 {
                queue.append(index)
            }
        }

        while !queue.isEmpty {
            let u = queue.removeFirst()
            result.append(u)
            for v in edges[u] {
                inDegree[v] -= 1
                if inDegree[v] == 0 {
                    queue.append(v)
                }
            }
        }

        return result.count == numCourses ? result : []
    }

}

// Test
let s = Solution()
s.findOrder(2, [[1, 0]]) == [0, 1]

//: [Next](@next)
