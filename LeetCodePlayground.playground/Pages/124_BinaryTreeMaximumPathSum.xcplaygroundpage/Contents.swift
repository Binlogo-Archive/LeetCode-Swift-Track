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
    func maxPathSum(_ root: TreeNode?) -> Int {
        return getPathSum(root).maxPath
    }

    private func getPathSum(_ root: TreeNode?) -> (singlePath: Int, maxPath: Int) {
        guard let root = root else {
            return (0, Int.min)
        }

        let left = getPathSum(root.left)
        let right = getPathSum(root.right)

        var singlePath = max(left.singlePath, right.singlePath) + root.val
        singlePath = max(singlePath, 0)

        let maxPath = max(left.maxPath,
                          right.maxPath,
                          left.singlePath + right.singlePath + root.val)
        return (singlePath, maxPath)
    }
}

//: [Next](@next)
