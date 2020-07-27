//
//  S57.swift
//  lcof
//
class S57I {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var l = 0, r = nums.count - 1
        while l < r {
            let sum = nums[l] + nums[r]
            if sum == target {
                return [nums[l], nums[r]]
            } else if sum < target {
                l += 1
            } else {
                r -= 1
            }
        }
        return []
    }
}
