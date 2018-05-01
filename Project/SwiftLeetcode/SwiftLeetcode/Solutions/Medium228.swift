//
//  Medium228.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 228. Summary Ranges
 https://leetcode.com/problems/summary-ranges/description/
 **/
import UIKit

// time: O(n), space: O(n)
public class Medium228: NSObject {
    public class func summaryRanges(_ nums: [Int]) -> [String] {
        if (nums.count == 0) {
            return []
        }
        var result:[String] = []
        var lowIndex = 0
        var highIndex = 0
        for i in 1..<nums.count {
            if nums[i] - nums[i - 1] == 1 {
                highIndex = i
            } else {
                if (highIndex <= lowIndex) {
                    result.append("\(nums[lowIndex])")
                } else {
                    result.append("\(nums[lowIndex])->\(nums[highIndex])")
                }
                lowIndex = i
            }
        }
        
        if (highIndex <= lowIndex) {
            result.append("\(nums[lowIndex])")
        } else {
            result.append("\(nums[lowIndex])->\(nums[highIndex])")
        }
        
        return result
    }
}
