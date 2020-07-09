//: [Previous](@previous)

import Foundation

class Solution {
    // TODO: 看乘风破浪的姐姐，仓促打卡，待捋
    func respace(_ dictionary: [String], _ sentence: String) -> Int {
        let length = sentence.count
        if length == 0 {
            return 0
        }
        let root = Trie()

        var curtail_dic = [String: Int]()

        var dic_min_count = 0
        for value in dictionary {
            if let _ = curtail_dic[value] {
                continue
            }

            dic_min_count = min(dic_min_count, value.count)
            curtail_dic[value] = value.count
            root.insert(value)
        }

        var dp = Array<Int>(repeating: 0, count: length + 1)
        dp[0] = 0
        let chars = Array(sentence)
        for i in 1...length {
            dp[i] = dp[i-1] + 1
            if i < dic_min_count {
                continue
            }

            var curPos = root

            var j = i
            while j >= 1 {
                let t = Int( chars[j-1].asciiValue! - Character("a").asciiValue!)
                if curPos.next[t] == nil {
                    break
                }else if curPos.next[t]!.isEnd {
                    dp[i] = min(dp[i],dp[j-1])
                }

                if dp[i] == 0 {
                    break
                }
                curPos = curPos.next[t]!
                j -= 1
            }
        }
        return dp[length]
    }
}

class Trie {
    var next:[Trie?] = []
    var isEnd = false

    init() {
        next = Array<Trie?>(repeating: nil, count: 26)
        isEnd = false
    }

    func insert(_ s: String) {
        var curPos = self
        let reversed = String( s.reversed())
        for char in reversed {
            let t = Int(char.asciiValue! - Character("a").asciiValue!)
            if curPos.next[t] == nil {
                curPos.next[t] = Trie()
            }
            curPos = curPos.next[t]!
        }
        curPos.isEnd = true
    }
}

// Tests
let s = Solution()
s.respace(["looked","just","like","her","brother"], "jesslookedjustliketimherbrother") == 7

//: [Next](@next)
