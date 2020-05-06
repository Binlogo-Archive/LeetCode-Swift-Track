//: [Previous](@previous)

import Foundation

//
// 98. 验证二叉搜索树
//
// 题目链接：https://leetcode-cn.com/problems/validate-binary-search-tree
// 标签：树、深度优先搜索
// 要点：递归判断或中序遍历
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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return _validate(root)
    }

    private func _validate(_ node: TreeNode?, min: Int? = nil, max: Int? = nil) -> Bool {

        guard let node = node else { return true }

        if let min = min, node.val <= min {
            return false
        }
        if let max = max, node.val >= max {
            return false
        }
        return _validate(node.left, min: min, max: node.val)
            && _validate(node.right, min: node.val, max: max)
    }
}

//: [Next](@next)
