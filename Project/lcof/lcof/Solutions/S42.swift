//
//  S42.swift
//  lcof
//

class S42 {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min
        var curSum = 0
        for n in nums {
            curSum = max(0, curSum)
            curSum += n
            maxSum = max(maxSum, curSum)
        }
        return maxSum
    }
}
