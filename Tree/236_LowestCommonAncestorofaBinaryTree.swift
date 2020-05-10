
//
// 236. 二叉树的最近公共祖先
//
// 题目链接：https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/
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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        if root.val == p?.val || root.val == q?.val { return root }

        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)

        return left == nil ? right : (right == nil ? left : root)
    }
}