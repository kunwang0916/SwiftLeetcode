//
//  Easy27.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/22/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 27. Remove Element
 https://leetcode.com/problems/remove-element/
 time: O(n)
 space: O(1)
 **/
import UIKit

class Easy27: NSObject {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var index = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[index] = nums[i]
                index += 1
            }
        }
        return index
    }
}
