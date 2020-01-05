//
// 203. 移除链表元素
//
// 题目链接：https://leetcode-cn.com/problems/remove-linked-list-elements
// 标签：链表
// 要点：设立哨兵节点，避免复杂的头尾判空处理
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var (pre, cur) = (dummy, head)
        while cur != nil {
            if cur!.val == val {
                pre.next = cur!.next
            } else {
                pre = cur!
            }
            cur = cur?.next
        }
        return dummy.next
    }
}
