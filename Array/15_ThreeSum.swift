
//
// 15. 三数之和
//
// 题目链接：https://leetcode-cn.com/problems/longest-common-prefix/
// 题目描述：
//   - 给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有满足条件且不重复的三元组。
//   - 注意：答案中不可以包含重复的三元组。

// 标签：数组、双指针
// 要点：枚举数组并额外采用双指针进行判断
// 时间复杂度：O(N^2)
// 空间复杂度：O(logN)
//

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        if nums.count < 3 { return [] }

        let nums = nums.sorted(by: <)
        var res = [[Int]]()

        for i in 0..<nums.count-2 {

            if i > 0 && nums[i] == nums[i - 1] { continue }

            var left = i + 1
            var right = nums.count - 1

            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    res.append([nums[i], nums[left], nums[right]])
                    while (left < right && nums[left] == nums[left + 1]) {
                        left += 1
                    }
                    while (left < right && nums[right] == nums[right - 1]) {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }
            }
        }

        return res
    }
}

// Tests

let s = Solution()
s.threeSum([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
s.threeSum([0,0,0,0]) == [[0, 0, 0]]
s.threeSum([-2,0,1,1,2]) == [[-2,0,2],[-2,1,1]]
