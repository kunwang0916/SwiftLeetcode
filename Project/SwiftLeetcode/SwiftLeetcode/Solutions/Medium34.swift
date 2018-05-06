//
//  Medium34.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/5/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 34. Search for a Range
 https://leetcode.com/problems/search-for-a-range/description/
 **/

import UIKit

public class Medium34: NSObject {
    // binary search: time: O(logn), space : O(1)
    public class func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if (nums.count == 0) {
            return [-1, -1]
        }
        var result:[Int] = []
        
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] >= target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        
        if left < nums.count && nums[left] == target {
            result.append(left)
        } else {
            return [-1, -1]
        }
        
        right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] <= target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        result.append(right)
        
        return result
    }
}
