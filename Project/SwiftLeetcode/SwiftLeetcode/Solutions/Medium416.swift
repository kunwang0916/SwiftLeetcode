//
//  Medium416.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 416. Partition Equal Subset Sum
 https://leetcode.com/problems/partition-equal-subset-sum/description/
 **/

import UIKit

public class Medium416: NSObject {
    // DP time: O(n*sum), space: O(sum)
    public class func canPartition(_ nums: [Int]) -> Bool {
        let sum = nums.reduce(0, +)
        if sum % 2 != 0 {
            return false
        }
        
        let target = sum / 2
        var dp:[Bool] = Array(repeating: false, count: sum + 1)
        dp[0] = true
        for num in nums {
            for i in stride(from: sum, to: -1, by: -1) {
                if dp[i] == true {
                    dp[i+num] = true
                }
            }
            if (dp[target]) {
                return true
            }
        }
        
        return false
    }
}
