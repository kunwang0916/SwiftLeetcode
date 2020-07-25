//
//  S39.swift
//  lcof
//
class S39 {
    func majorityElement(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        var result = nums[0]
        var count = 1

        for i in 1..<nums.count {
            if nums[i] != result {
                count -= 1
                if count == 0 {
                    result = nums[i]
                    count = 1
                }
                continue
            }
            count += 1
        }
        return result
    }
}
