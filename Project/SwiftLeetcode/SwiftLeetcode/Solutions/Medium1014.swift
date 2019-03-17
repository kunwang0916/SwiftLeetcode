//
//  Medium1014.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/16/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1014. Capacity To Ship Packages Within D Days
 https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/
 time: O(LogN * N), binary search * validation
 space: O(1)
 **/

import UIKit

public class Medium1014: NSObject {
    func shipWithinDays(_ weights: [Int], _ D: Int) -> Int {
        var lowC = 0
        var highC = 0
        for w in weights {
            lowC = max(w, lowC)
            highC += w
        }
        
        while lowC < highC {
            let mid = lowC + (highC - lowC) / 2
            if canDo(weights, mid, D) {
                highC = mid
            } else {
                lowC = mid + 1
            }
        }
        
        return lowC
    }
    
    func canDo(_ weights:[Int], _ capacity: Int, _ D: Int) -> Bool {
        var curSum =  0
        var count = 1
        for w in weights {
            curSum += w
            if  curSum > capacity {
                curSum = w
                count += 1
            }
        }
        
        return count <= D
    }
}
