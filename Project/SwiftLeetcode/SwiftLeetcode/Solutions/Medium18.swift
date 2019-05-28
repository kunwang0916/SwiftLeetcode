//
//  Medium18.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/27/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 18. 4Sum
 https://leetcode.com/problems/4sum/
 time: O(N^3)
 space: O(1)
 **/

import UIKit

class Medium18: NSObject {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 {
            return []
        }
        var nums = nums.sorted()
        var result:[[Int]] = []
        
        for i in 0..<(nums.count - 3) {
            if (i > 0 && nums[i] == nums[i-1]) {
                continue;
            }
            for j in i+1..<(nums.count - 2) {
                if (j > i+1 && nums[j] == nums[j-1]) {
                    continue;
                }
                var k = j + 1
                var m = nums.count - 1
                while k < m {
                    let sum = nums[i] + nums[j]  + nums[m] + nums[k]
                    if sum == target {
                        result.append([nums[i], nums[j], nums[k], nums[m]])
                        k += 1
                        m -= 1
                        while k < m && (k > j+1 && nums[k] == nums[k-1]) {
                            k += 1
                        }
                        
                        while k < m && (m < nums.count - 1 && nums[m] == nums[m+1]) {
                            m -= 1
                        }
                    } else if sum < target {
                        k += 1
                    } else {
                        m -= 1
                    }
                }
            }
        }
        
        return result
    }
}
