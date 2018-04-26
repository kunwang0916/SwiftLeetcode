//
//  Easy26.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

import UIKit

/**
 26. Remove Duplicates from Sorted Array
 https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
 
 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 **/

public class Easy26: NSObject {
    public class func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var count = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i-1] {
                nums[count] = nums[i]
                count += 1
            }
        }
        
        return count
    }
}
