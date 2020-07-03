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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return helper(nums, left: 0, right: nums.count - 1)
    }

    func helper(_ nums: [Int], left: Int, right: Int) -> TreeNode? {
        if left > right {
            return nil
        }
        let mid = (left + right) / 2
        let node = TreeNode(nums[mid])
        node.left = helper(nums, left: left, right: mid - 1)
        node.right = helper(nums, left: mid + 1, right: right)
        return node
    }
}

//: [Next](@next)
