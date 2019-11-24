//
// 24. 两两交换链表中的节点
//
// 题目链接：https://leetcode-cn.com/problems/swap-nodes-in-pairs/
// 标签：链表
// 要点：链表遍历, 递归
// **** 上一次递归 -> head -> next -> 下一次递归
// **** head -> 下一次递归结果，next -> head
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

import Foundation

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard let wrappedHead = head,
            let next = wrappedHead.next else {
                return head
        }
        
        wrappedHead.next = swapPairs(next.next)
        next.next = wrappedHead
        return next
    }
}
