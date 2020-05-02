
// 冒泡排序
func bubbleSort<Element: Comparable>(_ array: inout [Element]) {
    guard array.count >= 2 else { return }

    for end in (1..<array.count).reversed() {
        var swapped: Bool = false
        for i in ((1...end)).reversed() {
            if array[i] < array[i - 1] {
                array.swapAt(i, i - 1)
                swapped = true
            }
        }
        if !swapped { return }
    }
}

// 选择排序
func selectionSort<Element: Comparable>(_ array: inout [Element]) {
    guard array.count >= 2 else { return }

    for current in 0..<array.count {
        var min = current
        for i in current..<array.count {
            if array[i] < array[min] {
                min = i
            }
        }
        if min != current {
            array.swapAt(min, current)
        }
    }
}

// 插入排序
func insertionSort<Element: Comparable>(_ array: inout [Element]) {
    guard array.count >= 2 else { return }

    for current in 1..<array.count {
        for i in (1...current).reversed() {
            if array[i] < array[i - 1] {
                array.swapAt(i, i - 1)
            } else {
                break
            }
        }
    }
}

// Tests

var testArray = [9, 4, 10, 3]
let sortedArray = [3, 4, 9, 10]

bubbleSort(&testArray)
selectionSort(&testArray)
insertionSort(&testArray)