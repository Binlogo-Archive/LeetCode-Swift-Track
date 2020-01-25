//: [Previous](@previous)

import Foundation

class MyCircularQueue {
    
    /// 数组
    private var items: [Int]
    /// 数组最大长度
    private let capacity: Int
    /// 队头下标
    private var head = -1
    /// 队尾下标
    private var tail = -1
    
    private var size: Int = 0
    
    /** Initialize your data structure here. Set the size of the queue to be k. */
    init(_ k: Int) {
        self.capacity = k
        self.items = [Int](repeating: 0, count: capacity)
    }
    
    /** Insert an element into the circular queue. Return true if the operation is successful. */
    func enQueue(_ value: Int) -> Bool {
        if isFull() {
            return false
        }
        
        tail = (tail + 1) % capacity
        items[tail] = value
        
        if size == 0 {
            head = tail
        }
        size += 1
        return true
    }
    
    /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        if isEmpty() {
            return false
        }
        
        head = (head + 1 ) % capacity
        size -= 1
        return true
    }
    
    /** Get the front item from the queue. */
    func Front() -> Int {
        return isEmpty() ? -1 : items[head]
    }
    
    /** Get the last item from the queue. */
    func Rear() -> Int {
        return isEmpty() ? -1 : items[tail]
    }
    
    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        return size == 0
    }
    
    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        return size == capacity
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */

//: [Next](@next)
