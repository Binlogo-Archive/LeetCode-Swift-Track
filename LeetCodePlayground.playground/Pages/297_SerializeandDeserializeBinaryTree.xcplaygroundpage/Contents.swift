//: [Previous](@previous)

import Foundation


/// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Codec {
    func serialize(_ root: TreeNode?) -> String {
        guard let root = root else{
            return ""
        }
        var res = [String]()
        res.append(String(root.val))
        var queue = [TreeNode]()
        queue.append(root)
        while queue.count > 0 {
            let node = queue.removeFirst()
            res.append((node.left == nil ? "null" : String(node.left!.val)))
            res.append((node.right == nil ? "null" : String(node.right!.val)))
            if node.left != nil {
                queue.append(node.left!)
            }
            if node.right != nil {
                queue.append(node.right!)
            }
        }
        while res.last == "null" {
            res.removeLast()
        }
        return res.joined(separator: ",")
    }
    func deserialize(_ data: String) -> TreeNode? {
        if data.count == 0 {
            return nil
        }
        let list = data.components(separatedBy: ",")
        var queue = [TreeNode]()
        let root = TreeNode(Int(list[0]) ?? 0)
        queue.append(root)
        var index = 1
        while index < list.count {
            let node = queue.removeFirst()
            let left = list[index]
            node.left = left == "null" ? nil : TreeNode(Int(left) ?? 0)
            index += 1
            if index >= list.count {
                break
            }
            let right = list[index]
            node.right = right == "null" ? nil : TreeNode(Int(right) ?? 0)
            index += 1
            if node.left != nil {
                queue.append(node.left!)
            }
            if node.right != nil {
                queue.append(node.right!)
            }
        }
        return root
    }
}

// Your Codec object will be instantiated and called as such:
var codec = Codec()
codec.deserialize(codec.serialize(codec.deserialize("1,2,3,null,null,4,5")))

//: [Next](@next)
