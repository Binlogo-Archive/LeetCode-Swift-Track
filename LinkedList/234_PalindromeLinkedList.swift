//
// 234. 回文链表
//
// 题目链接：https://leetcode-cn.com/problems/palindrome-linked-list/
// 标签：链表、双指针
// 要点：快慢指针找到链表中间节点的同时，翻转前半部分链表
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
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return true
        }
        
        var slow = head
        var fast = head?.next
        
        var reHead: ListNode? // 用于翻转前半部分链表
        
        while fast != nil && fast?.next != nil {
            let temp = slow

            slow = slow?.next
            fast = fast?.next?.next
            
            temp?.next = reHead
            reHead = temp
        }
    
        if fast != nil { // 偶数
            fast = slow?.next
            slow?.next = reHead
        } else {
            fast = slow?.next
            slow = reHead
        }
        
        while fast != nil && slow != nil {
            if fast?.val != slow?.val {
                return false
            }
            fast = fast?.next
            slow = slow?.next
        }
        return true
    }
}
