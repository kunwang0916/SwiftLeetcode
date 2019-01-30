//
//  Easy122.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/29/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 122. Best Time to Buy and Sell Stock II
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Easy122: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }
        var profit = 0
        for i in 1..<prices.count {
            if prices[i] > prices[i-1] {
                profit += prices[i] - prices[i-1]
            }
        }
        
        return profit
    }
}
