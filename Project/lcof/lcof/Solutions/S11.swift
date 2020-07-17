//
//  S11.swift
//  lcof
//

class S11 {
    func minArray(_ numbers: [Int]) -> Int {
        var low = 0
        var high = numbers.count - 1
        while low < high {
            let mid = (low + high) / 2
            if numbers[mid] > numbers[high] {
                low = mid + 1
            } else if numbers[mid] < numbers[high] {
                high = mid
            } else {
                high -= 1
            }
        }

        return numbers[low]
    }
}
