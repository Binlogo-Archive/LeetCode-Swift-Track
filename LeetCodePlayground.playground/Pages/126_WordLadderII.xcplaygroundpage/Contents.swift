//: [Previous](@previous)

import Foundation

class Solution {
    func findLadders(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> [[String]] {
        // TODO: 先打卡，再来理解梳理
        var res:[[String]] = [[String]]()
        //加速查找
        var dict:Set<String> = Set<String>(wordList)
        //构建队列
        var p:[String] = [String]()
        //加入源顶点
        p.append(beginWord)
        var paths:[[String]] = [[String]]()
        paths.append(p)
        var level:Int = 1, minLevel:Int = Int.max
        var words:Set<String> = Set<String>()
        while (paths.count != 0)
        {
            let t = paths.removeFirst()
            if t.count > level
            {
                for w in words{dict.remove(w)}
                words = Set<String>()
                level = t.count
                if level > minLevel {break}
            }
            let last:String = t.last!
            for i in 0..<last.count
            {
                var newLast:String = last
                for ch in 97...122
                {
                    newLast[i] = ch.ASCII
                    if !dict.contains(newLast){continue}
                    words.insert(newLast)
                    var nextPath = t
                    nextPath.append(newLast)
                    if newLast == endWord
                    {
                        res.append(nextPath)
                        minLevel = level
                    }
                    else
                    {
                        paths.append(nextPath)
                    }
                }
            }
        }
        return res
    }
}

////String扩展方法
extension String {
    //subscript函数可以检索数组中的值
    //直接按照索引方式截取指定索引的字符
    subscript (_ i: Int) -> Character {
        //读取字符
        get {return self[index(startIndex, offsetBy: i)]}

        //修改字符
        set
        {
            var str:String = self
            let index = str.index(startIndex, offsetBy: i)
            str.remove(at: index)
            str.insert(newValue, at: index)
            self = str
        }
    }
}

//Int扩展方法
extension Int {
    //属性：ASCII值(定义大写为字符值)
    var ASCII:Character
    {
        get {return Character(UnicodeScalar(self)!)}
    }
}

// Tests
let s = Solution()
s.findLadders("hit",  "cog", ["hot","dot","dog","lot","log","cog"]) == [
    ["hit","hot","dot","dog","cog"],
    ["hit","hot","lot","log","cog"]
]

s.findLadders("hit",  "cog", ["hot","dot","dog","lot","log"]) == []

//: [Next](@next)
