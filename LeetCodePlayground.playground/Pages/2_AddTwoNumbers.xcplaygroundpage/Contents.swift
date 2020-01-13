//: [Previous](@previous)

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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        let dummy = ListNode(0)
        var node = dummy
        var l1 = l1
        var l2 = l2
        
        while l1 != nil || l2 != nil {
            let v1 = l1?.val ?? 0
            let v2 = l2?.val ?? 0
            let sum = v1 + v2 + carry
            carry = sum / 10
            node.next = ListNode(sum % 10)
            
            if l1 != nil { l1 = l1?.next }
            if l2 != nil { l2 = l2?.next }
            node = node.next!
        }
        if carry > 0 {
            node.next = ListNode(carry)
        }
        return dummy.next
    }
}

//: [Next](@next)
