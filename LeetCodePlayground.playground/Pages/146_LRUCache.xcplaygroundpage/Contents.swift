//: [Previous](@previous)

import Foundation

class Node {
    var key: Int
    var value: Int
    var next: Node?
    weak var prev: Node?

    init(key: Int, value: Int) {
        self.key = key
        self.value = value
    }
}

class LRUCache {
    var capacity: Int
    var dict: [Int: Node]
    var head: Node
    var tail: Node

    init(_ capacity: Int) {
        self.capacity = capacity
        self.dict = [Int: Node]()
        self.head = Node(key: 0, value: 0)
        self.tail = Node(key: 0, value: 0)
        self.head.next = self.tail
        self.tail.prev = self.head
    }

    func get(_ key: Int) -> Int {
        if let node = dict[key] {
            remove(node: node)
            add(node: node)
            return node.value
        } else {
            return -1
        }
    }

    func put(_ key: Int, _ value: Int) {
        if let node = dict[key] {
            remove(node: node)
        }

        let newNode = Node(key: key, value: value)
        dict[key] = newNode
        add(node: newNode)

        if dict.count > capacity {
            let first = head.next!
            remove(node: first)
            dict.removeValue(forKey: first.key)
        }
    }

    private func add(node: Node) {
        let last = self.tail.prev!
        last.next = node
        node.prev = last
        node.next = tail
        tail.prev = node
    }

    private func remove(node: Node) {
        guard let prev = node.prev, let next = node.next else {
            return
        }

        prev.next = next
        next.prev = prev
    }
}

//: [Next](@next)
