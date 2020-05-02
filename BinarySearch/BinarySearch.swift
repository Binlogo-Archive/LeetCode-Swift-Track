
func findIndices(of value: Int, in array: [Int]) -> CountableRange<Int>? {
    guard let startIndex = startIndex(of: value, in: array, range: 0..<array.count)
        else {
            return nil
    }
    guard let endIndex = endIndex(of: value, in: array, range: 0..<array.count)
        else {
            return nil
    }
    return startIndex..<endIndex
}

func startIndex(of value: Int, in array: [Int], range: CountableRange<Int>) -> Int? {
    let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

    if middleIndex == 0 || middleIndex == array.count - 1 {
        if array[middleIndex] == value {
            return middleIndex
        } else {
            return nil
        }
    }

    if array[middleIndex] == value {
        if array[middleIndex - 1] != value {
            return middleIndex
        } else {
            return startIndex(of: value, in: array, range: range.lowerBound..<middleIndex)
        }
    } else if value < array[middleIndex] {
        return startIndex(of: value, in: array, range: range.lowerBound..<middleIndex)
    } else {
        return startIndex(of: value, in: array, range: middleIndex..<range.upperBound)
    }
}

func endIndex(of value: Int, in array: [Int], range: CountableRange<Int>) -> Int? {
    let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

    if middleIndex == 0 || middleIndex == array.count - 1 {
        if array[middleIndex] == value {
            return middleIndex + 1
        } else {
            return nil
        }
    }

    if array[middleIndex] == value {
        if array[middleIndex + 1] != value {
            return middleIndex + 1
        } else {
            return endIndex(of: value, in: array, range: middleIndex..<range.upperBound)
        }
    } else if value < array[middleIndex] {
        return endIndex(of: value, in: array, range: range.lowerBound..<middleIndex)
    } else {
        return endIndex(of: value, in: array, range: middleIndex..<range.upperBound)
    }
}

extension RandomAccessCollection where Element: Comparable {
    func binarySearch(for value: Element, in range: Range<Index>? = nil) -> Index? {
        let range = range ?? startIndex..<endIndex

        guard range.lowerBound < range.upperBound else {
            return nil
        }

        let size = distance(from: range.lowerBound, to: range.upperBound)
        let middle = index(range.lowerBound, offsetBy: size / 2)
        if self[middle] == value {
            return middle
        } else if self[middle] > value {
            return binarySearch(for: value, in: range.lowerBound..<middle)
        } else {
            return binarySearch(for: value, in: index(after: middle)..<range.upperBound)
        }
    }
}
