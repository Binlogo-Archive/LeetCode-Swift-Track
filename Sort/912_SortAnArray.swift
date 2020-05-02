
class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
//        return _bubbleSort(nums)
//        return _selectionSort(nums)
//        return _insertionSort(nums)
        return _mergeSort(nums)
    }

    // 归并排序
    private func _mergeSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        guard array.count > 1 else {
            return array
        }
        let mid = array.count / 2
        let left = _mergeSort(Array(array[0..<mid]))
        let right = _mergeSort(Array(array[mid...]))

        return _merge(left, right)
    }

    private func _merge<Element: Comparable>(_ left: [Element], _ right: [Element]) -> [Element] {
        var leftIndex = 0
        var rightIndex = 0
        var result: [Element] = []

        while leftIndex < left.count && rightIndex < right.count {
            let leftElement = left[leftIndex]
            let rightElement = right[rightIndex]
            if leftElement < rightElement {
                result.append(leftElement)
                leftIndex += 1
            } else if leftElement > rightElement{
                result.append(rightElement)
                rightIndex += 1
            } else {
                result.append(leftElement)
                result.append(rightElement)
                leftIndex += 1
                rightIndex += 1
            }
        }
        if leftIndex < left.count {
            result.append(contentsOf: left[leftIndex...])
        }
        if rightIndex < right.count {
            result.append(contentsOf: right[rightIndex...])
        }
        return result
    }

    // 思考：冒泡排序和插入排序的时间复杂度都是 O(n^2)，都是原地排序算法，为什么插入排序要比冒泡排序更受欢迎呢？
    private func _insertionSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        var array = array
        for current in 1..<array.count {
            for inserting in (1...current).reversed() {
                if array[inserting] < array[inserting - 1] {
                    array.swapAt(inserting, inserting - 1)
                } else {
                    break
                }
            }
        }
        return array
    }

    private func _bubbleSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        var array = array
        for end in (1...array.count).reversed() {
            var swapped = false
            for current in (1..<end) {
                if array[current] < array[current - 1] {
                    array.swapAt(current, current - 1)
                    swapped = true
                }
            }
            if !swapped { return array }
        }
        return array
    }

    private func _selectionSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        var array = array
        for current in 0..<array.count {
            var min = current
            for selecting in current..<array.count {
                if array[selecting] < array[min] {
                    min = selecting
                }
            }
            array.swapAt(current, min)
        }
        return array
    }
}

// Tests
let s = Solution()
s.sortArray([1,2,3,5]) == [1,2,3,5]
s.sortArray([5,2,3,1]) == [1,2,3,5]
s.sortArray([5,1,1,2,0,0]) == [0,0,1,1,2,5]
