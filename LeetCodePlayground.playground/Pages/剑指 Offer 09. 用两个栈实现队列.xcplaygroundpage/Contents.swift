//: [Previous](@previous)

import Foundation

class CQueue {

    var stack1: [Int] = []
    var stack2: [Int] = []

    init() {

    }

    func appendTail(_ value: Int) {
        stack1.append(value)
    }

    func deleteHead() -> Int {
        if stack2.isEmpty {
            while let head = stack1.popLast() {
                stack2.append(head)
            }
        }
        return stack2.popLast() ?? -1
    }
}

//: [Next](@next)
