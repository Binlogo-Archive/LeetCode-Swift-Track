//: [Previous](@previous)

import Foundation

class Solution {
    func decodeString(_ s: String) -> String {
        if s.isEmpty { return s }

        var nums = [Int]()
        var decodedComponents = [String]()
        var decodingString = ""

        let charactors = [Character](s)
        var i = 0
        while i < charactors.count {
            if charactors[i].isNumber {
                var count = 0
                while charactors[i].isNumber {
                    count = 10 * count + Int(String(charactors[i]))!
                    i += 1
                }
                nums.append(count)
            } else if charactors[i] == "[" {
                decodedComponents.append(decodingString)
                decodingString = ""
                i += 1
            } else if charactors[i] == "]" {
                if var decodedComponent = decodedComponents.popLast(), let count = nums.popLast() {
                    for _ in 0..<count {
                        decodedComponent.append(decodingString)
                    }
                    decodingString = decodedComponent
                }
                i += 1
            } else {
                decodingString.append(charactors[i])
                i += 1
            }
        }

        return decodingString
    }
}

// Tests

let s = Solution()
s.decodeString("3[a]2[bc]") == "aaabcbc"

//: [Next](@next)
