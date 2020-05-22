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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else { return nil }

        let root = TreeNode(preorder[0])
        var stack = [TreeNode]()
        stack.append(root)
        var inorderIndex = 0
        for i in 1..<preorder.count {
            let preorderValue = preorder[i]
            var node = stack.last
            if let node = node, node.val != inorder[inorderIndex] {
                node.left = TreeNode(preorderValue)
                stack.append(node.left!)
            } else {
                while !stack.isEmpty && stack.last?.val == inorder[inorderIndex] {
                    node = stack.popLast()
                    inorderIndex += 1
                }
                guard let node = node else { return root }
                node.right = TreeNode(preorderValue)
                stack.append(node.right!)
            }
        }
        return root
    }
}

//: [Next](@next)
