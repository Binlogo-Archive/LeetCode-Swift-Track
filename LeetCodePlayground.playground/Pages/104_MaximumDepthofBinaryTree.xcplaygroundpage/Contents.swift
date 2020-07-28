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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let node = root else { return 0 }
        return max(maxDepth(node.left), maxDepth(node.right)) + 1
    }
}

//: [Next](@next)
