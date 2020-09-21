
//
// 1.两数之和
//
// 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
// 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
//
// 题目链接：https://leetcode-cn.com/problems/two-sum/
// 标签：数组、哈希表
// 要点：顺序遍历目标数组，利用哈希表（Dictionary）查找元素时间复杂度O(1)的特性，
//      以『元素值』为Key，『元素索引』为Value暂存，暂存字典中若存在target - num的键值对，即命中返回
// 时间复杂度：O(n)
// 空间复杂度：O(n)
//

import Foundation

class Solution {
    typealias Index = Int
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // 利用哈希表（Dictionary）查找元素时间复杂度O(1)的特性
        var indexesDictionary = [Int: Index]()
        
        for (index, num) in nums.enumerated() {
            // 暂存字典中若存在target - num的键值对，即命中返回
            if let pairIndex = indexesDictionary[target - num] {
                return [pairIndex, index]
            }
            // 以『元素值』为Key，『元素索引』为Value暂存
            indexesDictionary[num] = index
        }
        
        return []
    }
}

// Tests
let s = Solution()
assert(s.twoSum([2,7,11,15], 9) == [0, 1])

//: [Next](@next)
