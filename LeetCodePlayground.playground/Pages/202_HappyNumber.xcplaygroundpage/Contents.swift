//: [Previous](@previous)

import Foundation

//
// 202. 快乐数
//
// 编写一个算法来判断一个数 n 是不是快乐数。
//
// 题目链接：https://leetcode-cn.com/problems/happy-number/
// 标签：哈希表、快慢指针、数学
// 要点：哈希表检测循环、数学规律
// 时间复杂度：O(log(N))
// 空间复杂度：
// * 哈希表：O(log(N))
// * 快慢指针: O(1)
// * 数学: O(1)
//

class Solution {
    var numSet: Set<Int> = []
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var next = 0
        while num >= 1 {
            next += Int(pow(Double(num % 10), 2))
            num /= 10
        }
        if next == 1 { return true }
        if numSet.contains(next) { return false }
        numSet.insert(next)
        return isHappy(next)
    }
}

class SolutionBy2Points {
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = _getNext(n)
        while fast != 1 && slow != fast {
            slow = _getNext(slow)
            fast = _getNext(_getNext(fast))
        }
        return fast == 1
    }

    private func _getNext(_ n: Int) -> Int {
        var num = n
        var next = 0
        while num >= 1 {
            next += Int(pow(Double(num % 10), 2))
            num /= 10
        }
        return next
    }
}

class SolutionByMath {
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var next = 0
        while num >= 1 {
            next += Int(pow(Double(num % 10), 2))
            num /= 10
        }
        if next == 1 { return true }
        return next == 4 ? false : isHappy(next)
    }
}

// Tests

let s = Solution()
s.isHappy(19) == true

let s2 = SolutionBy2Points()
s2.isHappy(19) == true

let s3 = SolutionByMath()
s3.isHappy(19) == true

//: [Next](@next)
