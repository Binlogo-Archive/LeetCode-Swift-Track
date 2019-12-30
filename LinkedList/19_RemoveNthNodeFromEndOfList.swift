
//
// 19. 删除链表的倒数第N个节点
//
// 题目链接：https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
// 标签：链表、双指针
// 要点：双指针，前一个指针快N个节点，借助dummy节点可有效避免判空
// 时间复杂度：O(N)
// 空间复杂度：O(1)
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
    }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var fast: ListNode? = dummy
        var slow: ListNode? = dummy
        
        for _ in 0..<n {
            if let node = fast?.next {
                fast = node
            }
        }
        while fast?.next != nil {
            slow = slow!.next
            fast = fast!.next
        }
        
        // remove
        slow!.next = slow!.next!.next
        return dummy.next
    }
}