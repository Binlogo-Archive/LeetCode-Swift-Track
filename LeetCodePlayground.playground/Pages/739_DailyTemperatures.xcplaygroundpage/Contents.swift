//: [Previous](@previous)

import Foundation

class Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        var res = [Int](repeating: 0, count: T.count)
        var stack = [Int]()
        
        for i in 0..<T.count {
            while !stack.isEmpty && T[i] > T[stack.last!] {
                res[stack.last!] = i - stack.last!
                stack.popLast()
            }
            stack.append(i)
        }
        
        return res
    }
}

//: [Next](@next)
