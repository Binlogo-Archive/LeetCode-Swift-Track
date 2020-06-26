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
    func removeDuplicateNodes(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }

        var valSet: Set<Int> = [head.val]
        var node: ListNode? = head
        while node?.next != nil {
            if valSet.contains(node!.next!.val) {
                node?.next = node?.next?.next
            } else {
                valSet.insert(node!.next!.val)
                node = node?.next
            }
        }
        return head
    }
}

//: [Next](@next)
