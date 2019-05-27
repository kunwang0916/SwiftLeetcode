//
//  Hard42.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/3/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 https://leetcode.com/problems/trapping-rain-water/
 42. Trapping Rain Water
 Time: O(N)
 space: O(1)
 **/

import UIKit

public class Hard42: NSObject {
    func trap(_ height: [Int]) -> Int {
        var leftMax = 0
        var rightMax = 0
        var leftIndex = 0
        var rightIndex = height.count - 1
        var sum = 0
        while (leftIndex < rightIndex) {
            if height[leftIndex] < height[rightIndex] {
                if height[leftIndex] > leftMax {
                    leftMax = height[leftIndex]
                } else {
                    sum += leftMax - height[leftIndex]
                }
                leftIndex += 1
            } else {
                if height[rightIndex] > rightMax {
                    rightMax = height[rightIndex]
                } else {
                    sum += rightMax - height[rightIndex]
                }
                rightIndex -= 1
            }
        }
        
        return sum;
    }
}
