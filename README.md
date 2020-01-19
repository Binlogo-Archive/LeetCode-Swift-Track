# LeetCode-Swift-Track
LeetCode 💖 Swift，攻克[数据结构](#数据结构)与[算法](#算法)。

**宣言**：~~早搞晚搞，迟早要搞，干就是了！~~ **Just Do IT！**

## 数据结构

数据结构是为算法服务的

* [数组](#数组) [`📔`](./Array/README.md)
* [字符串](#字符串)
* [链表](#链表)
* [栈](#栈)
* [队列](#队列)
* [散列表](#散列表)
* [二叉树](#二叉树)
* [堆](#堆)
* [跳表](#跳表)
* [图](#图)
* [Trie 树](#Trie-树)

### 数组

| 标题                                                         |            标签            | 描述                                                         |                             题解                             |
| :----------------------------------------------------------- | :------------------------: | :----------------------------------------------------------- | :----------------------------------------------------------: |
| [1. 两数之和](https://leetcode-cn.com/problems/two-sum/)     |      `数组` `哈希表`       | 给定一个整数数组和目标值，找出和为目标值的那两个整数。       |              [Swift](./Array/001_TwoSum.swift)               |
| [724. 寻找数组的中心索引](https://leetcode-cn.com/problems/find-pivot-index/) |           `数组`           | 给定一个整数数组，找出「中心索引」                           |          [Swift](./Array/724_FindPivotIndex.swift)           |
| [747. 至少是其他数字两倍的最大数](https://leetcode-cn.com/problems/largest-number-at-least-twice-of-others/) |           `数组`           | 查找数组中的最大元素是否至少是数组中每个其他数字的两倍。     | [Swift](./Array/747_LargestNumberAtLeastTwiceofOthers.swift) |
| [66. 加一](https://leetcode-cn.com/problems/plus-one/)       |           `数组`           | 给定一个由**整数**组成的**非空**数组所表示的非负整数，在该数的基础上加一。 |              [Swift](./Array/66_PlusOne.swift)               |
| [498. 对角线遍历](https://leetcode-cn.com/problems/diagonal-traverse/) |           `数组`           | 给定一个含有 M x N 个元素的矩阵（M 行，N 列），请以对角线遍历的顺序返回这个矩阵中的所有元素 |         [Swift](./Array/498_Diagonal_Traverse.swift)         |
| [118. 杨辉三角](https://leetcode-cn.com/problems/pascals-triangle/) |           `数组`           | 给定一个非负整数 *numRows，*生成杨辉三角的前 *numRows* 行    |         [Swift](./Array/118_Pascal's_Triangle.swift)         |
| [283. 移动零](https://leetcode-cn.com/problems/move-zeroes/) |           `数组`           | 给定一个数组 `nums`，编写一个函数将所有 `0` 移动到数组的末尾，同时保持非零元素的相对顺序。 |            [Swift](./Array/283_MoveZeroes.swift)             |
| [27. 移除元素](https://leetcode-cn.com/problems/remove-element/) |           `数组`           | 给定一个数组 *nums* 和一个值 *val*，你需要[原地](https://baike.baidu.com/item/原地算法)移除所有数值等于 *val* 的元素，返回移除后数组的新长度。 |           [Swift](./Array/27_RemoveElement.swift)            |
| [26. 删除排序数组中的重复项](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/) |           `数组`           | 给定一个排序数组，你需要在[原地](http://baike.baidu.com/item/原地算法)删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。 |  [Swift](./Array/26_RemoveDuplicatesFromSortedArray.swift)   |
| [75. 颜色分类](https://leetcode-cn.com/problems/sort-colors/) |   `数组` `排序` `双指针`   | 给定一个包含红色、白色和蓝色，一共 *n* 个元素的数组，[原地](https://baike.baidu.com/item/原地算法)对它们进行排序，使得相同颜色的元素相邻，并按照红色、白色、蓝色顺序排列。 |             [Swift](./Array/75_SortColors.swift)             |
| [215. 数组中的第K个最大元素](https://leetcode-cn.com/problems/kth-largest-element-in-an-array/) |   `数组` `排序` `多指针`   | 在未排序的数组中找到第 **k** 个最大的元素。请注意，你需要找的是数组排序后的第 k 个最大的元素，而不是第 k 个不同的元素。 |      [Swift](./Array/215_FindKthLargestInAnArray.swift)      |
| [88. 合并两个有序数组](https://leetcode-cn.com/problems/merge-sorted-array/) |      `数组` `双指针`       | 给定两个有序整数数组 *nums1* 和 *nums2*，将 *nums2* 合并到 *nums1* 中*，*使得 *num1* 成为一个有序数组。 |          [Swift](./Array/88_MergeSortedArray.swift)          |
| [167. 两数之和 II - 输入有序数组](https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/) | `数组` `双指针` `二分查找` | 给定一个已按照***升序排列\*** 的有序数组，找到两个数使得它们相加之和等于目标数。 |             [Swift](./Array/167_TwoSumII.swift)              |
| [125. 验证回文串](https://leetcode-cn.com/problems/valid-palindrome/) |     `数组` `指针碰撞`      | 给定一个字符串，验证它是否是回文串，只考虑字母和数字字符，可以忽略字母的大小写。 |          [Swift](./Array/125_ValidPalindrome.swift)          |
| [345. 反转字符串中的元音字母](https://leetcode-cn.com/problems/reverse-vowels-of-a-string/) |     `数组` `指针碰撞`      | 编写一个函数，以字符串作为输入，反转该字符串中的元音字母。   |      [Swift](./Array/345_ReverseVowelsOfAString.swift)       |
| [11. 盛最多水的容器](https://leetcode-cn.com/problems/container-with-most-water/) |      `数组` `双指针`       | 给定 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0)。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。 |       [Swift](./Array/11_ContainerWithMostWater.swift)       |
| [209. 长度最小的子数组](https://leetcode-cn.com/problems/minimum-size-subarray-sum/) | `数组` `双指针` `二分查找` | 给定一个含有 **n** 个正整数的数组和一个正整数 **s ，**找出该数组中满足其和 **≥ s** 的长度最小的连续子数组**。**如果不存在符合条件的连续子数组，返回 0。 |      [Swift](./Array/209_MinimumSizeSubarraySum.swift)       |



### 字符串

| 标题                                                         |      标签       | 描述                                                 |             题解              |
| :----------------------------------------------------------- | :-------------: | ---------------------------------------------------- | :---------------------------: |
| [67. 二进制求和](https://leetcode-cn.com/problems/add-binary/) | `字符串` `数学` | 给定两个二进制字符串，返回他们的和（用二进制表示）。 | [Swift](./67_AddBinary.swift) |



### 链表

| 标题                                                         |      标签       | 描述                                                         |                          题解                           |
| :----------------------------------------------------------- | :-------------: | :----------------------------------------------------------- | :-----------------------------------------------------: |
| [24.两两交换链表中的节点](https://leetcode-cn.com/problems/swap-nodes-in-pairs/) |     `链表`      | 给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。   |     [Swift](LinkedList/024_SwapNodesInPairs.swift)      |
| [707. 设计链表](https://leetcode-cn.com/problems/design-linked-list/) |     `链表`      | 设计链表的实现。您可以选择使用单链表或双链表。               |     [Swift](LinkedList/707_DesignLinkedList.swift)      |
| [19. 删除链表的倒数第N个节点](https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/) | `链表` `双指针` | 给定一个链表，删除链表的倒数第 *n* 个节点，并且返回链表的头结点。 | [Swift](LinkedList/19_RemoveNthNodeFromEndOfList.swift) |
| [203. 移除链表元素](https://leetcode-cn.com/problems/remove-linked-list-elements/) |     `链表`      | 删除链表中等于给定值 **val** 的所有节点。                    | [Swift](LinkedList/203_RemoveLinkedListElements.swift)  |
| [328. 奇偶链表](https://leetcode-cn.com/problems/odd-even-linked-list/) | `链表` `多指针` | 给定一个单链表，把所有的奇数节点和偶数节点分别排在一起。     |     [Swift](LinkedList/328_OddEvenLinkedList.swift)     |
| [234. 回文链表](https://leetcode-cn.com/problems/palindrome-linked-list/) | `链表` `双指针` | 判断一个链表是否为回文链表。                                 |   [Swift](LinkedList/234_PalindromeLinkedList.swift)    |
| [2. 两数相加](https://leetcode-cn.com/problems/add-two-numbers/) |  `链表` `数学`  | 给出两个 **非空** 的链表用来表示两个非负的整数。             |        [Swift](LinkedList/2_AddTwoNumbers.swift)        |
| [21. 合并两个有序链表](https://leetcode-cn.com/problems/merge-two-sorted-lists/) |     `链表`      | 将两个有序链表合并为一个新的有序链表并返回。                 |    [Swift](LinkedList/21_MergeTwoSortedLists.swift)     |
| [61. 旋转链表](https://leetcode-cn.com/problems/rotate-list/) | `链表` `双指针` | 给定一个链表，旋转链表，将链表每个节点向右移动 *k* 个位置，其中 *k* 是非负数。 |         [Swift](LinkedList/61_RotateList.swift)         |



### 栈

| 标题                                                         |     标签      | 描述                                                         |                             题解                             |
| :----------------------------------------------------------- | :-----------: | ------------------------------------------------------------ | :----------------------------------------------------------: |
| [1003. 检查替换后的词是否有效](https://leetcode-cn.com/problems/check-if-word-is-valid-after-substitutions/) | `字符串` `栈` | 按给定规则检查替换后的词有效性                               | [Swift](./Stack/1003_CheckIfWordIsValidAfterSubstitutions.swift) |
| [71. 简化路径](https://leetcode-cn.com/problems/simplify-path/) | `字符串` `栈` | 以 Unix 风格给出一个文件的**绝对路径**，你需要简化它。或者换句话说，将其转换为规范路径。 |            [Swift](./Stack/71_SimplifyPath.swift)            |
| [155. 最小栈](https://leetcode-cn.com/problems/min-stack/)   | `栈`、`设计`  | 设计一个支持 push，pop，top 操作，并能在常数时间内检索到最小元素的栈。 |              [Swift](Stack/155_MinStack.swift)               |
| [20. 有效的括号](https://leetcode-cn.com/problems/valid-parentheses/) | `字符串` `栈` | 给定一个只包括 `'('`，`')'`，`'{'`，`'}'`，`'['`，`']'` 的字符串，判断字符串是否有效。 |           [Swift](Stack/20_ValidParentheses.swift)           |

### 队列

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 散列表

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 二叉树

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 堆

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 跳表

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 图

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### Trie-树

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

## 算法

算法要作用在特定的数据结构之上

* [递归](#递归)
* [排序](#排序)
* [二分查找](#二分查找)
* [搜索](#搜索)
* [哈希算法](#哈希算法)
* [贪心算法](#贪心算法)
* [分治算法](#分治算法)
* [回溯算法](#回溯算法)
* [动态规划](#动态规划)
* [字符串匹配算法](#字符串匹配算法)

### 递归

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 排序

|                          标题                           |     标签      |                             描述                             |             题解             |
| :-----------------------------------------------------: | :-----------: | :----------------------------------------------------------: | :--------------------------: |
| 274. [H指数](https://leetcode-cn.com/problems/h-index/) | `排序` `哈希` | 给定论文被引用次数的数组。编写一个方法，计算出研究者的 *h* 指数。 | [Swfit](./274_H-Index.swift) |

### 二分查找

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 搜索

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 哈希算法

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 贪心算法

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 分治算法

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 回溯算法

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 动态规划

| 标题 | 标签 | 描述 | 题解 |
| :--: | :--: | :--: | :--: |
|      |      |      |      |

### 字符串匹配算法

| 标题                                                         |       标签       | 描述                                           |                   题解                    |
| :----------------------------------------------------------- | :--------------: | :--------------------------------------------- | :---------------------------------------: |
| [8.字符串转换整数 (atoi)](https://leetcode-cn.com/problems/string-to-integer-atoi/) | `数学` `字符串`  | 实现一个 `atoi` 函数，使其能将字符串转换成整数 |   [Swift](./008_StringToInteger.swift)    |
| [151. 翻转字符串里的单词](https://leetcode-cn.com/problems/reverse-words-in-a-string/) |     `字符串`     | 给定一个字符串，逐个翻转字符串中的每个单词。   | [Swift](./151_ReverseWordsInString.swift) |
| [880. 索引处的解码字符串](https://leetcode-cn.com/problems/decoded-string-at-index/) | `字符串`、`余数` | 给定编码字符串，查找解码字符串中的第 K 个字母  | [Swift](./880_DecodedStringAtIndex.swift) |

