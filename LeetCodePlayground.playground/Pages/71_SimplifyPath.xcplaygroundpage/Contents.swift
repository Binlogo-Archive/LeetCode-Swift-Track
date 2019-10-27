//: [Previous](@previous)

import Foundation

class Solution {
    func simplifyPath(_ path: String) -> String {
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
