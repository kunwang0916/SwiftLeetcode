//
//  Easy53.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/26/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 53. Maximum Subarray
 https://leetcode.com/problems/maximum-subarray/
 time: o(n)
 space: O(1)
 **/
import UIKit

class Easy53: NSObject {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = Int.min
        var curSum = 0
        
        for num in nums {
            curSum = max(curSum + num, num)
            result = max(curSum, result)
        }
        return result
    }
}
