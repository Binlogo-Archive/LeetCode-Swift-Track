//
// 328. 奇偶链表
//
// 题目链接：https://leetcode-cn.com/problems/odd-even-linked-list/
// 标签：链表
// 要点：多指针，遍历原链表，将其奇偶节点分别放入两个链表，并将偶链表链接在奇链表尾部
// 时间复杂度：O(N)
// 空间复杂度：O(1)
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
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        
        let evenHead = head.next
        var odd: ListNode? = head, even = evenHead
        
        while even != nil && even?.next != nil {
            odd?.next = even?.next
            odd = odd?.next
            even?.next = odd?.next
            even = even?.next
        }
        odd?.next = evenHead
        return head
    }
}
