//
//  Medium134.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 134. Gas Station
 https://leetcode.com/problems/gas-station/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Medium134: NSObject {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var curTank = 0
        var totalTank = 0
        var startIndex = 0
        for i in 0..<gas.count {
            let it = gas[i] - cost[i]
            curTank += it
            totalTank += it
            if curTank < 0 {
                curTank = 0
                startIndex = i + 1
            }
        }
        
        if totalTank < 0 {
            return -1
        }
        
        return startIndex
    }
}
