//: [Previous](@previous)

import Foundation


/// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func recoverFromPreorder(_ S: String) -> TreeNode? {
        guard !S.isEmpty else { return nil }

        let chars = [Character](S)
        var nodes = [TreeNode?]()
        var index = 0

        var degree = 0
        while index < chars.count {
            if chars[index] == "-" {
                degree += 1
            } else {
                var temp = "\(chars[index])"
                while index + 1 < chars.count {
                    if chars[index + 1] == "-" {
                        break
                    }
                    temp = "\(temp)\(chars[index + 1])"
                    index += 1
                }
                let node = TreeNode(Int(temp)!)
                if !nodes.isEmpty {
                    if degree < nodes.count {
                        nodes[degree - 1]?.right = node
                        nodes.removeLast(nodes.count - degree)
                    } else {
                        nodes[degree - 1]?.left = node
                    }
                }
                nodes.append(node)
                degree = 0
            }
            index += 1
        }
        return nodes.first ?? nil
    }
}

//: [Next](@next)
