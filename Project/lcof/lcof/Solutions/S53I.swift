//
//  S53I.swift
//  lcof
//

class S53I {
    func search(_ nums: [Int], _ target: Int) -> Int {
        return find(nums, target) - find(nums, target - 1)
    }
    
    private func find(_ nums: [Int], _ t: Int) -> Int {
        var i = 0, j = nums.count - 1
        while i <= j {
            let m = (i + j) / 2
            if nums[m] <= t {
                i = m + 1
            } else {
                j = m - 1
            }
        }
        
        return i
    }
}
