//: [Previous](@previous)

import Foundation

class Solution {
    func isBipartite(_ graph: [[Int]]) -> Bool {
        /// 图？啥？（并查集
        var friends = [Int](repeating: 0, count: graph.count)
        for i in 0 ..< friends.count {
            friends[i] = i
        }

        func find(_ x: Int) -> Int {
            return friends[x] == x ? x : find(friends[x])
        }

        func merge(_ x: Int, _ y: Int) {
            let fx = find(x), fy = find(y)
            friends[fy] = friends[fx]
        }

        for table in graph {
            var pre = -1
            for neighbor in table {
                if pre != -1 { merge(pre, neighbor) }
                pre = neighbor
            }
        }

        for master in 0 ..< graph.count {
            for neighbor in graph[master] {
                if find(master) == find(neighbor) { return false }
            }
        }
        return true
    }
}

//: [Next](@next)
