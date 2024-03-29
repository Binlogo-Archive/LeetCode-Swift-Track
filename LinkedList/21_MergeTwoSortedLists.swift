
//
// 21. 合并两个有序链表
//
// 题目链接：https://leetcode-cn.com/problems/merge-two-sorted-lists/
// 标签：链表
// 要点：递归
// 时间复杂度：O(N+M)
// 空间复杂度：O(N+M)
//

import Foundation

/// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }
        
        if l1.val < l2.val {
            l1.next = mergeTwoLists(l1.next, l2)
            return l1
        } else {
            l2.next = mergeTwoLists(l1, l2.next)
            return l2
        }
    }
}
