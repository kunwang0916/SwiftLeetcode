//
//  Medium11.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 11. Container With Most Water
 https://leetcode.com/problems/container-with-most-water/description/
 **/

import UIKit

public class Medium11: NSObject {
    // time: O(n), space O(1)
    public class func maxArea(_ height: [Int]) -> Int {
        var result = 0
        var left = 0
        var right = height.count - 1
        while left < right {
            let area = min(height[left], height[right]) * (right - left)
            result = max(area, result)
            if height[left] > height[right] {
                right -= 1
            } else {
                left += 1
            }
        }
        return result
    }
}
