
//
// 150. 逆波兰表达式求值
//
// 根据逆波兰表示法，求表达式的值。
//
// 题目链接：https://leetcode-cn.com/problems/evaluate-reverse-polish-notation/
// 标签：栈、
// 要点：操作数压栈、操作符出栈
// 时间复杂度：O(N)
// 空间复杂度：O(<N)，最大不会超过 N
//

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
s.evalRPN(["2", "1", "+", "3", "*"]) == 9
s.evalRPN(["4", "13", "5", "/", "+"]) == 6
s.evalRPN(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]) == 22
