//
//  Medium518.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/16/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 518. Coin Change 2
 https://leetcode.com/problems/coin-change-2/
 **/
import UIKit

public class Medium518: NSObject {
    /**
     dp:
     ways[0] = 1
     ways[n] = sum(ways[i - coin])
     space: O(amount)
     time: amount * coins.length O(N*S)
     **/
    public class func change(_ amount: Int, _ coins: [Int]) -> Int {
        var ways = Array(repeating: 0, count: amount + 1)
        ways[0] = 1
        
        for coin in coins {
            if coin > amount {
                continue
            }
            for i in coin...amount {
                ways[i] += ways[i - coin]
            }
        }
        
        return ways[amount]
    }
}
