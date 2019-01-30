//
//  Easy121.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/29/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 121. Best Time to Buy and Sell Stock
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
 time: O(n)
 space: O(1)
 **/
import UIKit

class Easy121: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        var lowPrice = prices[0]
        var maxProfit = 0
        for i in 1..<prices.count {
            let p = prices[i]
            if p > lowPrice {
                maxProfit = max(p - lowPrice, maxProfit)
            } else {
                lowPrice = p
            }
        }
        return maxProfit
    }
}
