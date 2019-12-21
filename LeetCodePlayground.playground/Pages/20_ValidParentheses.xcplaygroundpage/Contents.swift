//: [Previous](@previous)

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [String] = []
        let paren_pairs = [
            ")":"(",
            "]": "[",
            "}": "{"
        ]
        for c in s {
            if !paren_pairs.keys.contains("\(c)") {
                stack.append("\(c)")
            } else if stack.isEmpty || paren_pairs["\(c)"] != stack.removeLast() {
                return false
            }
        }
        return stack.isEmpty
    }
}

//: [Next](@next)
