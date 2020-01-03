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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var pre: ListNode?
        var cur = head
        
        while cur != nil {
            let next = cur!.next
            cur!.next = pre
            pre = cur
            cur = next
        }
        
        return pre
    }
}


//: [Next](@next)
