//: [Previous](@previous)

//
// 61. 旋转链表
//
// 给定一个链表，旋转链表，将链表每个节点向右移动 k 个位置，其中 k 是非负数。
//
// 题目链接：https://leetcode-cn.com/problems/rotate-list/
// 标签：链表、双指针
// 要点：链表成环，区分判断好`head`与`tail`
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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head = head else { return nil }
        guard head.next != nil else { return head }
        
        var node = head
        var n = 1
        while node.next != nil {
            node = node.next!
            n += 1
        }
        node.next = head
        
        var newTail = head
        for _ in 0..<(n - k % n - 1) {
            newTail = newTail.next!
        }
        let newHead = newTail.next
        newTail.next = nil
        
        return newHead
    }
}

/**
 示例1：
 ```
 输入: 1->2->3->4->5->NULL, k = 2
 输出: 4->5->1->2->3->NULL
 解释:
 向右旋转 1 步: 5->1->2->3->4->NULL
 向右旋转 2 步: 4->5->1->2->3->NULL
 ```
 示例 2：
 ```
 输入: 0->1->2->NULL, k = 4
 输出: 2->0->1->NULL
 解释:
 向右旋转 1 步: 2->0->1->NULL
 向右旋转 2 步: 1->2->0->NULL
 向右旋转 3 步: 0->1->2->NULL
 向右旋转 4 步: 2->0->1->NULL
 ```
 */

//: [Next](@next)
