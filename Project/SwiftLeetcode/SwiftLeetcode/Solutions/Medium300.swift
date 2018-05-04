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
    //TODO: Adding solution in O(nLogn) time
    public class func lengthOfLIS(_ nums: [Int]) -> Int {
        return self.DP(nums)
    }
    
    // time: O(n^2), space : O(n)
    class func DP(_ nums: [Int]) -> Int {
        if (nums.count < 2) {
            return nums.count
        }
        
        var dp:[Int] = Array(repeating: 1, count: nums.count)
        var maxLength = dp[0]
        for i in 1..<nums.count {
            for j in 0..<i {
                if (nums[j] < nums[i]) {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            maxLength = max(dp[i], maxLength)
        }
        
        return maxLength
    }
}
