//
//  Easy283.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/27/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 283. Move Zeroes
 https://leetcode.com/problems/move-zeroes/
 time: O(n)
 space: O(1)
 **/
import UIKit

class Easy283: NSObject {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.isEmpty {
            return
        }
        var slowIndex = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[slowIndex] = nums[i]
                slowIndex += 1
            }
        }
        
        while slowIndex < nums.count {
            nums[slowIndex] = 0
            slowIndex += 1
        }
    }
}
