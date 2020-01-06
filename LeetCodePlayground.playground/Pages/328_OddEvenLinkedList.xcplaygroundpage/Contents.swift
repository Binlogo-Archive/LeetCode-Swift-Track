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

//: [Next](@next)
