
//
// 1.两数之和
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
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // 利用哈希表（Dictionary）查找元素时间复杂度O(1)的特性
        var maybeAddendDictionary = [Int: Int]()
        
        for (index, num) in nums.enumerated() {
            // 暂存字典中若存在target - num的键值对，即命中返回
            if let lastIndex = maybeAddendDictionary[target - num] {
                return [lastIndex, index]
            }
            // 以『元素值』为Key，『元素索引』为Value暂存
            maybeAddendDictionary[num] = index
        }
        
        return []
    }
}

// Tests
let s = Solution()
assert(s.twoSum([2,7,11,15], 9) == [0, 1])

//: [Next](@next)
