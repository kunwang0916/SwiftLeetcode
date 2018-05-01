//
//  Medium75.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/1/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 75. Sort Colors
 https://leetcode.com/problems/sort-colors/description/
 **/
import UIKit

public class Medium75: NSObject {
    // time: O(n), space: O(1)
    public class func sortColors(_ nums: inout [Int]) {
        if (nums.count < 2) {
            return
        }
        var indexOf0 = 0
        var indexOf2 = nums.count - 1
        var currentIndex = indexOf0
        while currentIndex <= indexOf2 {
            if (nums[currentIndex] == 0) {
                if (currentIndex > indexOf0) {
                    self.swap(&nums, currentIndex, indexOf0)
                    indexOf0 += 1
                } else {
                    currentIndex += 1
                }
            } else if (nums[currentIndex] == 2) {
                if (currentIndex < indexOf2) {
                    self.swap(&nums, currentIndex, indexOf2)
                    indexOf2 -= 1
                } else {
                    currentIndex += 1
                }
            } else {
                currentIndex += 1
            }
        }
    }
    
    class func swap(_ nums: inout [Int], _ a: Int, _ b: Int) {
        let t = nums[a]
        nums[a] = nums[b]
        nums[b] = t
    }
}
