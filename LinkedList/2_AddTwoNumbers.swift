
//
// 2. 两数相加
// 给出两个非空的链表用来表示两个非负的整数。
// 其中，它们各自的位数是按照逆序的方式存储的，并且它们的每个节点只能存储一位数字。
//
// 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
//
// 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
//
// 题目链接：https://leetcode-cn.com/problems/add-two-numbers/
// 标签：链表 数学
// 要点：加法数学在链表中的体现
// 时间复杂度：O(max(M,N))
// 空间复杂度：O(max(M,N))
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // 保存进位
        var carry = 0
        // 哨兵节点
        let dummy = ListNode(0)
        var node = dummy
        var l1 = l1
        var l2 = l2
        
        while l1 != nil || l2 != nil {
            let v1 = l1?.val ?? 0
            let v2 = l2?.val ?? 0
            // 两位相加再加进位
            let sum = v1 + v2 + carry
            carry = sum / 10
            node.next = ListNode(sum % 10)
            
            if l1 != nil { l1 = l1?.next }
            if l2 != nil { l2 = l2?.next }
            node = node.next!
        }
        // 最后一位加上必要的进位
        if carry > 0 {
            node.next = ListNode(carry)
        }
        return dummy.next
    }
}