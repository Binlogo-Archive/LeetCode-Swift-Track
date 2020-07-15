//: [Previous](@previous)

import Foundation
//return int(math.factorial(2*n)/math.factorial(n+1)/math.factorial(n))
//var str = "Hello, playground"

class Solution {
    func numTrees(_ n: Int) -> Int {
        (0..<n).reduce(1) { (c, i) in
            let a = c * 2 * (2 * i + 1)
            return a / (i + 2)
        }
    }
}

// Tests
let s = Solution()
s.numTrees(3)

//: [Next](@next)
