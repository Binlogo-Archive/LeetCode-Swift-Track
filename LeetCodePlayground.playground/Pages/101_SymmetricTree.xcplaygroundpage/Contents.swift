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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return check(p: root, q: root)
    }

    private func check(p: TreeNode?, q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }

        if let p = p, let q = q {
            return p.val == q.val && check(p: p.left, q: q.right) && check(p: p.right, q: q.left)
        } else {
            return false
        }
    }
}

//: [Next](@next)
