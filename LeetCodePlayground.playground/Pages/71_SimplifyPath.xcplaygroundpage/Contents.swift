//: [Previous](@previous)

//
// 71. 简化路径
//
// 题目链接：https://leetcode-cn.com/problems/simplify-path/
// 标签：栈、字符串
// 要点：根据题意，考虑清楚出入栈条件，以及跳过逻辑
// 时间复杂度：O(N)
// 空间复杂度：O(N)
//

import Foundation

class Solution {
    func simplifyPath(_ path: String) -> String {
        /* Think about split implementation
         * link: https://github.com/apple/swift/blob/c1ab69e2db6922814111ff0bc3855f7bee0e18a6/stdlib/public/core/Collection.swift#L1527
        **/
        let paths = path.split(separator: "/")
        
        var pathStack = [String]()
        
        for path in paths {
            guard path != ".", !path.isEmpty else { continue }
            
            if path == ".." {
                pathStack.popLast()
            } else {
                pathStack.append(String(path))
            }
        }
        
        return "/" + pathStack.joined(separator: "/")
    }
}

// Tests
let s = Solution()
s.simplifyPath("/home/") == "/home"
s.simplifyPath("/../") == "/"
s.simplifyPath("/home//foo/") == "/home/foo"
s.simplifyPath("/a/./b/../../c/") == "/c"
s.simplifyPath("/a/../../b/../c//.//") == "/c"
s.simplifyPath("/a//b////c/d//././/..") == "/a/b/c"

//: [Next](@next)
