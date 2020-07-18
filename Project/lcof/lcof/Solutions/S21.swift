//
//  S21.swift
//  lcof
//

class S21 {
    func exchange(_ nums: [Int]) -> [Int] {
        var nums = nums
        var li = 0
        var hi = nums.count - 1
        while li < hi {
            if nums[li] % 2 == 1 {
                li += 1
                continue
            }

            if nums[hi] % 2 == 0 {
                hi -= 1
                continue
            }

            let t = nums[hi]
            nums[hi] = nums[li]
            nums[li] = t
            li += 1
            hi -= 1
        }

        return nums
    }
}
