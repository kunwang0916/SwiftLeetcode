//
//  Medium322.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/15/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 322. Coin Change
 https://leetcode.com/problems/coin-change/
 **/
import UIKit

public class Medium322: NSObject {
    /**
     time: amount * length, O(N*S)
     space: amount = O(N)
     **/
    public class func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        let max = amount + 1
        var min_cost = Array(repeating: max, count: amount + 1)
        min_cost[0] = 0
        if (amount > 0) {
            for i in 1...amount {
                for coin in coins {
                    if coin <= i {
                        min_cost[i] = min(min_cost[i], min_cost[i-coin] + 1)
                    }
                }
            }
        }
        
        if min_cost[amount] > amount {
            return -1
        }
        return min_cost[amount]
    }
}
