//
//  Medium983.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/26/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/minimum-cost-for-tickets/
 983. Minimum Cost For Tickets
 time : O(maxDay)
 space: O(maxDay)
 **/
import UIKit

public class Medium983: NSObject {
    public class func mincostTickets(_ days: [Int], _ costs: [Int]) -> Int {
        let maxDay = days.last ?? 0
        var minCost = Array(repeating: 0, count: maxDay + 1)
        var needBuy = Array(repeating: 0, count: maxDay + 1)
        for day in days {
            needBuy[day] = 1
        }
        minCost[0] = 0
        
        for day in 1...maxDay {
            if needBuy[day] == 0 {
                minCost[day] = minCost[day - 1]
                continue
            }
        
            minCost[day] = minCost[day-1] + costs[0]
            minCost[day] = min(minCost[day], minCost[max(0, day-7)] + costs[1])
            minCost[day] = min(minCost[day], minCost[max(0, day-30)] + costs[2])
        }
        
        return minCost.last ?? 0
    }
}
