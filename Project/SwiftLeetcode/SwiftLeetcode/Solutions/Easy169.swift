//
//  Easy169.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/12/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 169. Majority Element
 https://leetcode.com/problems/majority-element/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Easy169: NSObject {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = nums[0]
        var count = 1
        for i in 1..<nums.count {
            if nums[i] != candidate {
                count -= 1
                if count < 0 {
                    candidate = nums[i]
                    count = 1
                }
            } else {
                count += 1
            }
        }
        return candidate
    }
}
