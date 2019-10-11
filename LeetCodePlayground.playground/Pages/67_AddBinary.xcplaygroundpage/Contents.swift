//: [Previous](@previous)

// 注意：转整数【Int(a, radix:2)】再相加的方案，无法处理溢出的情况

import Foundation

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let aChars = Array(a), bChars = Array(b)
        var sum = 0, carry = 0, res = ""
        var i = aChars.count - 1, j = bChars.count - 1
        
        while i >= 0 || j >= 0 || carry > 0 {
            let bitA: Int = {
                if i < 0 { return 0 }
                defer { i -= 1 }
                return Int(String(aChars[i]))!
            }()
            let bitB: Int = {
                if j < 0 { return 0 }
                defer { j -= 1 }
                return Int(String(bChars[j]))!
            }()
            
            sum = bitA ^ bitB ^ carry
            carry = (bitA & bitB) | (carry & (bitA | bitB))
            
            res = String(sum) + res
        }
        return res
    }
}

// Tests
let s = Solution()
assert(s.addBinary("11", "1") == "100")
assert(s.addBinary("1010", "1011") == "10101")

let bigA = "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101"
let bigB = "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011"
let bigExpectation = "110111101100010011000101110110100000011101000101011001000011011000001100011110011010010011000000000"
assert(s.addBinary(bigA, bigB) == bigExpectation)

//: [Next](@next)
