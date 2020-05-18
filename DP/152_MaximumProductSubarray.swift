
//
// 152. 最大子序和
//
// 题目链接：https://leetcode-cn.com/problems/maximum-product-subarray/
// 标签：数组、分治算法、动态规划
// 要点：贪心
// 时间复杂度： O(n)
// 空间复杂度： O(1)
// 备注：与 53 题相似，不同点是，由于乘积在负数情况下存在差异，多记录一个最小乘积进行累乘
//

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        let currentPruduct = nums.first ?? Int.min
        var maxProduct = currentPruduct
        var minProduct = currentPruduct
        var result = currentPruduct
        for current in 1..<nums.count {
            let _max = maxProduct
            let _min = minProduct
            maxProduct = max(_max * nums[current], max(nums[current], _min * nums[current]))
            minProduct = min(_min * nums[current], min(nums[current], _max * nums[current]))
            result = max(maxProduct, result)
        }
        return result
    }
}

// Tests
let s = Solution()
s.maxProduct([2, 3, -2, 4]) == 6
s.maxProduct([-2, 0, -1]) == 0
s.maxProduct([-2, 3, -4]) == 24
s.maxProduct([-2]) == -2