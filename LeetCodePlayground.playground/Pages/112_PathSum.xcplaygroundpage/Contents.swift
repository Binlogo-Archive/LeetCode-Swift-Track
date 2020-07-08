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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else {
            return false
        }
        if root.left == nil && root.right == nil {
            return root.val == sum
        }
        return hasPathSum(root.left, sum - root.val)
            || hasPathSum(root.right, sum - root.val)
    }
}

//: [Next](@next)
