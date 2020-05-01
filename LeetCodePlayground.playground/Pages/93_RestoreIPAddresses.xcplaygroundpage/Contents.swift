//: [Previous](@previous)

import Foundation

//
// 93. 复原IP地址
//
// 题目链接：https://leetcode-cn.com/problems/restore-ip-addresses/
// 标签：字符串
// 要点：字符串的扫描遍历，回溯算法
// 时间复杂度：
// 空间复杂度：
//

class Solution {

    lazy var result = [String]()

    func restoreIpAddresses(_ s: String) -> [String] {

        guard s.count >= 4, s.count <= 12 else { return [] }
        _backtrack(s, index: 0, segments: [])
        return result
    }

    private func _backtrack(_ s: String, index: Int, segments: [String]) {
        segments.count
        if index == s.count && segments.count == 4 {
            result.append(segments.joined(separator: "."))
            return
        }

        let chars = [Character](s)
        for i in 1...3 {
            if index + i > s.count { continue }
            if i != 1 && chars[index] == "0" { continue }
            let segment = String(chars[index..<index+i])
            if Int(segment)! <= 255 {
                _backtrack(s, index: index + i, segments: segments + [segment])
            }
        }
    }
}

// Tests

let s = Solution()
//s.restoreIpAddresses("25525511135") == ["255.255.11.135", "255.255.111.35"]
s.restoreIpAddresses("255255255255") == ["255.255.255.255"]

//: [Next](@next)
