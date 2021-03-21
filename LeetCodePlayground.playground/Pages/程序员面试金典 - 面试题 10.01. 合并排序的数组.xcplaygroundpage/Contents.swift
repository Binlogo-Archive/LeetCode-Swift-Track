//: [Previous](@previous)

import Foundation

class Solution {
    func merge(_ A: inout [Int], _ m: Int, _ B: [Int], _ n: Int) {
        guard m != 0 else {
            A = B
            return
        }
        guard n != 0 else {
            return
        }
        
        var a = m - 1
        var b = n - 1
        var cur = m + n - 1
        while b >= 0 {
            if a < 0 {
                A[cur] = B[b]
                b -= 1
                cur -= 1
            } else if A[a] >= B[b] {
                A[cur] = A[a];
                a -= 1
                cur -= 1
            } else {
                A[cur] = B[b];
                b -= 1
                cur -= 1
            }
        }
    }
}

// Tests
let solution = Solution()
var A = [1,2,3,0,0,0]
solution.merge(&A, 3, [2,5,6], 3)
A == [1,2,2,3,5,6]

A = [0]
solution.merge(&A, 0, [1], 1)
A == [1]

//: [Next](@next)
