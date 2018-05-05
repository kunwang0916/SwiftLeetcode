//
//  Medium33.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/5/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 33. Search in Rotated Sorted Array
 https://leetcode.com/problems/search-in-rotated-sorted-array/description/
 **/

import UIKit

public class Medium33: NSObject {
    public class func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return -1
        }
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }
            //key: find the sorted half, and check whether target in there
            if nums[left] < nums[mid] {
                if nums[left] <= target && target < nums[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                if nums[mid] < target && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        
        return -1
    }
}
