//: [Previous](@previous)

import Foundation

//
// 102. 二叉树的层序遍历
//
// 题目链接：https://leetcode-cn.com/problems/binary-tree-level-order-traversal/
// 标签：树
// 要点：递归，理解并把握返回的终止条件
// 时间复杂度： O(N)
// 空间复杂度： O(N)
//

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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var result = [[Int]]()
        func _helper(_ node: TreeNode, level: Int) {
            if result.count == level {
                result.append([])
            }
            result[level].append(node.val)
            if let left = node.left {
                _helper(left, level: level + 1)
            }
            if let right = node.right {
                _helper(right, level: level + 1)
            }
        }

        _helper(root, level: 0)
        return result
    }
}

//: [Next](@next)
