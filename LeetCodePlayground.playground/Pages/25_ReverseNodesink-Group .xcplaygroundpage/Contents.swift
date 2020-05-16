//: [Previous](@previous)

import Foundation

//
// 25. K 个一组翻转链表
//
// 题目链接：https://leetcode-cn.com/problems/reverse-nodes-in-k-group/
// 标签：链表
// 要点：与翻转链表类似，考虑清楚细节，注重细节处理的设计，善用哨兵节点
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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var pre: ListNode? = dummy

        var head = head

        while head != nil {
            var tail = pre
            for _ in 0..<k {
                // 剩余部分长度不足，保持原序
                guard let next = tail?.next else {
                    return dummy.next
                }
                tail = next
            }

            let next = tail?.next
            let (newHead, newTail) = reverse(head: head, tail: tail)
            pre?.next = newHead
            newTail?.next = next
            pre = newTail
            head = newTail?.next
        }

        return dummy.next
    }

    func reverse(head: ListNode?, tail: ListNode?) -> (head: ListNode?, tail: ListNode?) {
        var pre = tail?.next
        var cur = head

        while pre !== tail {
            let next = cur!.next
            cur?.next = pre
            pre = cur
            cur = next
        }

        return (tail, head)
    }
}

//: [Next](@next)
