//
//  S53II.swift
//  lcof
//

class S53II {
    func missingNumber(_ nums: [Int]) -> Int {
        var i = 0
        var j = nums.count - 1
        while i <= j {
            let m = (i + j) / 2
            if nums[m] == m {
                i = m + 1
            } else {
                j = m - 1
            }
        }

        return i
    }
}
