//
//  Easy746.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/28/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 746. Min Cost Climbing Stairs
 https://leetcode.com/problems/min-cost-climbing-stairs/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Easy746: NSObject {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp1 = 0
        var dp2 = 0
        var t = 0
        for i in 2...cost.count {
            t =  min(dp2 + cost[i-1], dp1 + cost[i-2])
            dp1 = dp2
            dp2 = t
        }
        
        return dp2
    }
}
