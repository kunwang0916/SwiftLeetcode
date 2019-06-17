//
//  Medium755.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/16/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 755. Pour Water
 https://leetcode.com/problems/pour-water/
 time: O(V * len(heights))
 space: O(1)
 **/

import UIKit

class Medium755: NSObject {
    func pourWater(_ heights: [Int], _ V: Int, _ K: Int) -> [Int] {
        var v = V
        var result = heights
        while v > 0 {
            var dropIndex = K
            
            // check left
            var p = K - 1
            while p > -1 {
                if result[p] > result[dropIndex] {
                    break
                }
                
                if result[p] < result[dropIndex] {
                    dropIndex = p
                }
                p -= 1
            }
            
            // check right only if we did not find point in left-side
            if dropIndex == K {
                // check right
                p = K + 1
                while p < result.count {
                    if result[p] > result[dropIndex] {
                        break
                    }
                    if result[p] < result[dropIndex] {
                        dropIndex = p
                    }
                    p += 1
                }
            }
            
            result[dropIndex] += 1
            v -= 1
        }
        
        return result
    }
}
