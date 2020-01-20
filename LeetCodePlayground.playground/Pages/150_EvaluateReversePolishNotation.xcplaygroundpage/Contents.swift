//: [Previous](@previous)

import Foundation

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        enum Operator: String {
            case add      = "+"
            case minus    = "-"
            case multiply = "*"
            case divide   = "/"
            
            func exec(left: Int, right: Int) -> Int {
                switch self {
                case .add: return left + right
                case .minus: return left - right
                case .multiply: return left * right
                case .divide: return left / right
                }
            }
        }

        var stack = [Int]()
        
        for token in tokens {
            if let op = Operator(rawValue: token) {
                guard let right = stack.popLast(), let left = stack.popLast() else { break }
                stack.append(op.exec(left: left, right: right))
            } else if let num = Int(token) {
                stack.append(num)
            }
        }
        
        return stack.first!
    }
}

/// Tests
let s = Solution()
s.evalRPN(["2", "1", "+", "3", "*"])
s.evalRPN(["4", "13", "5", "/", "+"])
s.evalRPN(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"])

//: [Next](@next)
