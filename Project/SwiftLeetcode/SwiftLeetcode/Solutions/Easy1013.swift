//
//  Easy1013.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/16/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1013. Pairs of Songs With Total Durations Divisible by 60
 https://leetcode.com/problems/pairs-of-songs-with-total-durations-divisible-by-60/
 time: O(n)
 space; O(n)
 **/

import UIKit

class Easy1013: NSObject {
    func numPairsDivisibleBy60(_ time: [Int]) -> Int {
        var dp = [Int: Int]()
        var result = 0
        let base = 60
        for t in time {
            var key = (t % base)
            if key > 0 {
                key = base - key
            }
            result += dp[key] ?? 0
            let saveKey = t % base
            dp[saveKey] = (dp[saveKey] ?? 0) + 1
        }
        return result
    }
}
