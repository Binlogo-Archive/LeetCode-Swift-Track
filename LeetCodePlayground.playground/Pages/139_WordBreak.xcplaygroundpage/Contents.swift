//: [Previous](@previous)

import Foundation

class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let wordDictSet = Set(wordDict)
        var dp = [Bool](repeating: false, count: s.count + 1)
        // 任意空字符串可被分割
        dp[0] = true
        for i in 1...s.count {
            for j in 0..<i {
                let startIndex = s.index(s.startIndex, offsetBy: j)
                let endIndex = s.index(s.startIndex, offsetBy: i)

                if dp[j] && wordDictSet.contains(String(s[startIndex..<endIndex])) {
                    dp[i] = true
                    break
                }
            }
        }
        return dp.last ?? false
    }
}

// Tests
let s = Solution()
s.wordBreak("leetcode", ["leet", "code"]) == true
s.wordBreak("applepenapple", ["apple", "pen"]) == true
s.wordBreak("catsandog", ["cats", "dog", "sand", "adn", "cat"]) == false

//: [Next](@next)
