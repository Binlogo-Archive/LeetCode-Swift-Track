//: [Previous](@previous)

//
// 155. 最小栈
//
// 题目链接：https://leetcode-cn.com/problems/min-stack/
// 标签：栈、设计
// 要点：除数据栈外，额外利用一个**辅助栈**放最小值，在 Swift 中采用数组实现
// 时间复杂度：O(1)
// 空间复杂度：O(N)
//

class MinStack {
    
    private var _innerArray: [Int]
    private var _helperArray: [Int]
    
    /** initialize your data structure here. */
    init() {
        _innerArray = []
        _helperArray = []
    }
    
    func push(_ x: Int) {
        _innerArray.append(x)
        if _helperArray.isEmpty || x <= _helperArray.last! {
            _helperArray.append(x)
        } else if let last = _helperArray.last {
            _helperArray.append(last)
        }
    }
    
    func pop() {
        if let _ = _innerArray.popLast() {
            _helperArray.popLast()
        }
    }
    
    func top() -> Int {
        guard let e = _innerArray.last else { return -1 }
        return e
    }
    
    func getMin() -> Int {
        guard let min = _helperArray.last else { return -1 }
        return min
    }
}

// Tests
let obj = MinStack()
obj.push(-2)
obj.push(0)
obj.push(-3)
obj.getMin()
obj.pop()
let ret_3: Int = obj.top()
let ret_4: Int = obj.getMin()

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

//: [Next](@next)
