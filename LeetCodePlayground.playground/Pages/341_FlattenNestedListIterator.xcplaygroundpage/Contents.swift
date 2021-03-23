//: [Previous](@previous)

import Foundation

//
// 341. 扁平化嵌套列表迭代器
//
// 题目链接：https://leetcode-cn.com/problems/flatten-nested-list-iterator/
//

protocol NestedInteger {
    // Return true if this NestedInteger holds a single integer, rather than a nested list.
    func isInteger() -> Bool

    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    func getInteger() -> Int

    // Set this NestedInteger to hold a single integer.
    func setInteger(value: Int)

    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    func add(elem: NestedInteger)

    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    func getList() -> [NestedInteger]
}

class NestedIterator {
    private var vals: [Int] = []
    private var current: Int?

    init(_ nestedList: [NestedInteger]) {
        dfs(nestedList)
        current = vals.first
    }
    
    func next() -> Int {
        return vals.removeFirst()
    }
    
    func hasNext() -> Bool {
        return !vals.isEmpty
    }
    
    private func dfs(_ nestedList: [NestedInteger]) {
        for nest in nestedList {
            if nest.isInteger() {
                vals.append(nest.getInteger())
            } else {
                dfs(nest.getList())
            }
        }
    }
}

/**
 * Your NestedIterator object will be instantiated and called as such:
 * let obj = NestedIterator(nestedList)
 * let ret_1: Int = obj.next()
 * let ret_2: Bool = obj.hasNext()
 */

//: [Next](@next)
