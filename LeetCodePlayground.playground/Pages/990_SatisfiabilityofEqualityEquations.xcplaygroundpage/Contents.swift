//: [Previous](@previous)

import Foundation

class Solution {
    func equationsPossible(_ equations: [String]) -> Bool {
        var parent = Array(repeating: 0, count: 26)
        for i in 0..<26 {
            parent[i] = i
        }
        for e in equations {
            let eArray = Array(e)
            if eArray[1] == "=" {
                _union(&parent, Int(eArray[0].asciiValue! - 97), Int(eArray[3].asciiValue! - 97))
            }
        }

        for e in equations {
            let eArray = Array(e)
            if eArray[1] == "!" {
                let p1 = _find(parent, Int(eArray[0].asciiValue! - 97))
                let p2 = _find(parent, Int(eArray[3].asciiValue! - 97))
                if p1 == p2 {
                    return false
                }
            }
        }

        return true
    }

    private func _union(_ parent: inout [Int], _ index1: Int, _ index2: Int) {
        let p1 = _find(parent, index1)
        let p2 = _find(parent, index2)
        parent[p1] = p2
    }

    private func _find(_ parent: [Int], _ index: Int) -> Int {
        var pIndex = index
        var p = parent
        while p[pIndex] != pIndex {
            let current = parent[pIndex]
            p[pIndex] = p[current]
            pIndex = current
        }
        return pIndex
    }
}

//: [Next](@next)
