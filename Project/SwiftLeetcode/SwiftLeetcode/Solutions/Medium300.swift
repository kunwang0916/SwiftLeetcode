//
//  Medium300.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 300. Longest Increasing Subsequence
 https://leetcode.com/problems/longest-increasing-subsequence/description/
 **/

import UIKit

public class Medium300: NSObject {
    public class func lengthOfLIS(_ nums: [Int]) -> Int {
        return self.DP(nums)
    }
    
    // time: O(n^2), space : O(n)
    class func DP(_ nums: [Int]) -> Int {
        if (nums.count < 2) {
            return nums.count
        }
        
        var maxLength = 0
        var dp:[Int] = Array(repeating: 0, count: nums.count)
        dp[0] = 1
        for i in 1..<nums.count {
            var currentMaxLength = 1
            for j in 0..<i {
                if (nums[j] < nums[i]) {
                    currentMaxLength = max(currentMaxLength, dp[j] + 1)
                }
            }
            dp[i] = currentMaxLength
            maxLength = max(currentMaxLength, maxLength)
        }
        
        return maxLength
    }
}
