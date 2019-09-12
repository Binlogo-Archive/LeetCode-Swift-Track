// 
// 8. 字符串转换整数 (atoi)
//
// 题目链接：https://leetcode-cn.com/problems/string-to-integer-atoi/
// 标签：数学、字符串
// 要点：遍历、去除（跳过）空白字符、判断正负、整数越界、判断字符是否为数字、每多一（个）位原结果值*10
// 时间复杂度：O(n)
// 空间复杂度：O(1)

private let intMax: Int = Int(Int32.max)
private let intMin: Int = Int(Int32.min)
class Solution {
    func myAtoi(_ str: String) -> Int {
        if str.isEmpty { return 0 }
        
        var res = 0
        var sign = 1
        var i = 0
        
        let chars = [Character](str)
        
        // 去除（跳过）空白字符
        while i < chars.count {
            guard chars[i] == " " else { break }
            i += 1
        }
        
        // 确保空字符串不越界
        guard i < chars.count else { return res }
        
        // 判断正负
        if chars[i] == "+" {
            i += 1
        } else if chars[i] == "-" {
            sign = -1
            i += 1
        }
        
        while i < chars.count {
            // 判断字符是否为数字
            guard chars[i] >= "0" && chars[i] <= "9" else { break }
            guard let digit = Int(String(chars[i])) else { break }
            
            // 每多一（个）位原结果值*10
            res = res * 10 + digit
            
            // 整数越界判断
            if sign == 1 && res >= intMax {
                return intMax
            } else if sign == -1 && res * -1 <= intMin {
                return intMin
            }
            
            i += 1
        }
        
        return res * sign
    }
}

// Tests
let s = Solution()

assert(s.myAtoi("    ") == 0)
assert(s.myAtoi("42") == 42)
assert(s.myAtoi("-42") == -42)
assert(s.myAtoi("4193 with words") == 4193)
assert(s.myAtoi("-91283472332") == -2147483648)
assert(s.myAtoi("20000000000000000000") == 2147483647)