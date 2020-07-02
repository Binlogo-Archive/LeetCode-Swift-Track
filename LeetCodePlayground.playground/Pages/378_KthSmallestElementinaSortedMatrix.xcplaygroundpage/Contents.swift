//: [Previous](@previous)

import Foundation

class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        return matrix.flatMap { $0 }.sorted()[k-1]
    }
}

//: [Next](@next)
