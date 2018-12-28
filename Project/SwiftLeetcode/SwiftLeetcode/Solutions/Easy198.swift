//
//  Easy198.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/28/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/house-robber/
 198. House Robber
 time: O(N)
 space: O(1)
 **/

import UIKit

class Easy198: NSObject {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        if (n < 1) {
            return 0
        }
        
        if (n == 1) {
            return nums[0]
        }
        
        if (n == 2) {
            return max(nums[0], nums[1])
        }
        
        var dp1 = nums[0]
        var dp2 = max(nums[0], nums[1])
        
        for i in 2..<n {
            (dp2, dp1) = (max(dp1 + nums[i], dp2), dp2)
        }
        return dp2
    }
}
