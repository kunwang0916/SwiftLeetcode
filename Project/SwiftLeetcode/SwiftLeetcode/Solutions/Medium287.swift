//
//  Medium287.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/27/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 287. Find the Duplicate Number
 https://leetcode.com/problems/find-the-duplicate-number/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Medium287: NSObject {
    func findDuplicate(_ nums: [Int]) -> Int {
        while (nums.count > 1) {
            var slow = nums[0]
            var fast = nums[nums[0]]
            while (slow != fast) {
                fast = nums[nums[fast]]
                slow = nums[slow]
            }
            
            fast = 0
            while (slow != fast) {
                fast = nums[fast]
                slow = nums[slow]
            }
            
            return fast
        }
        return -1
    }
}
