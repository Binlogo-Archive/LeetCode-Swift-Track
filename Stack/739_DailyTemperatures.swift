//
// 739. 每日温度
//
// 根据每日 气温 列表，请重新生成一个列表，对应位置的输入是你需要再等待多久温度才会升高超过该日的天数。
//
// 题目链接：https://leetcode-cn.com/problems/daily-temperatures/
// 标签：栈、哈希表
// 要点：递减栈
// 时间复杂度：O(N)
// 空间复杂度：O(W)，W 是 T[i] 的可取值数
//

import Foundation

class Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        var res = [Int](repeating: 0, count: T.count)
        var stack = [Int]()
        
        for i in 0..<T.count {
            while !stack.isEmpty && T[i] > T[stack.last!] {
                res[stack.last!] = i - stack.last!
                stack.popLast()
            }
            stack.append(i)
        }
        
        return res
    }
}
