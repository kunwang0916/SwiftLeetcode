//
//  Medium309.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/29/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 309. Best Time to Buy and Sell Stock with Cooldown
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/
 time: O(n)
 space: O(1)
 
 if sold in day[i]
    - sold[i] = hold[i-1] + prices[i]
 if hold in day[i]
    2 case: nothing in day[i-1], bought in day[i-1]
    - hold[i] = max(hold[i-1], rest[i-1] - price)
 if rest in day[i]
    2 case: sold in day[i-1], rest in day[i-1]
    - rest[i] = max(rest[i-1], sold[i-1])
 **/

import UIKit

class Medium309: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        var sold = 0
        var rest = 0
        var hold = Int.min
        for price in prices {
            let prev_sold = sold
            sold = hold + price
            hold = max(hold, rest - price)
            rest = max(rest, prev_sold)
        }
        return max(sold, hold)
    }
}
