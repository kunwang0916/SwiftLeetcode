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
 **/
import UIKit

class Easy746: NSObject {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var minCost = Array(repeating: 0, count: cost.count)
        minCost[0] = cost[0]
        minCost[1] = cost[1]
        for i in 2..<cost.count {
            minCost[i] = min(minCost[i-2], minCost[i-1]) + cost[i]
        }
        
        return min(minCost[cost.count-1], minCost[cost.count-2])
    }
}
