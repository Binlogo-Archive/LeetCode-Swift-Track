//
// 707. 设计链表
//
// 题目链接：https://leetcode-cn.com/problems/design-linked-list/
//

import Foundation

class MyLinkedListNode {
    var val: Int
    var next: MyLinkedListNode?
    init(val: Int) {
        self.val = val
    }
}

class MyLinkedList {
    typealias Node = MyLinkedListNode

    private let dummy = Node(val: -1)
    
    var head: Node? {
        return dummy.next
    }
    
    var tail: Node? {
        var node = head
        while let next = node?.next {
            node = next
        }
        return node
    }
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    private func node(at index: Int) -> Node? {
        guard index >= 0 else { return nil }
        if index == 0 { return head }
        var node = head
        var i = index
        while node != nil {
            if i == 0 { return node }
            i -= 1
            node = node?.next
        }
        return nil
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        return node(at: index)?.val ?? -1
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let node = Node(val: val)
        node.next = dummy.next
        dummy.next = node
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        let node = Node(val: val)
        if let tail = tail {
            tail.next = node
        } else {
            dummy.next = node
        }
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        guard index >= 0 else { return }
        let node = Node(val: val)
        if index == 0 {
            addAtHead(val)
        } else {
            var cur = head
            var i = index
            while cur != nil {
                if i == 1 {
                    node.next = cur!.next
                    cur!.next = node
                }
                i -= 1
                cur = cur?.next
            }
        }
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        guard index >= 0 else { return }
        if index == 0 {
            dummy.next = dummy.next?.next
        } else {
            var i = index
            var cur = head
            while cur != nil {
                if i == 1 {
                    cur?.next = cur?.next?.next
                }
                i -= 1
                cur = cur?.next
            }
        }
    }
    
}

extension MyLinkedList: CustomStringConvertible {
    var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.val)"
            node = node!.next
            if node != nil { text += "," }
        }
        
        return text + "]"
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */

do {
    let obj = MyLinkedList()
    obj.addAtHead(1)
    obj.addAtTail(3)
    obj.addAtIndex(1, 2)
    obj.get(1)
    obj.deleteAtIndex(1)
    obj.get(1)
}

do {
    let obj = MyLinkedList()
    obj.addAtHead(1)
    obj.addAtTail(3)
    obj.addAtIndex(1, 2)
    obj.get(1)
    obj.deleteAtIndex(0)
    obj.get(0)
}
