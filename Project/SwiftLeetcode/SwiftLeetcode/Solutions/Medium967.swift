//
//  Medium967.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/29/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 967. Numbers With Same Consecutive Differences
 https://leetcode.com/problems/numbers-with-same-consecutive-differences
 time: N(2^N)
 space: N(2^N)
 **/
import UIKit

class Medium967: NSObject {
    func numsSameConsecDiff(_ N: Int, _ K: Int) -> [Int] {
        var result = [Int]()
        var from = 1
        if (N == 1) {
            from = 0
        }
        
        for i in from..<10 {
            helper(N-1, K, i, &result)
        }
        
        return result
    }
    
    func helper(_ N: Int, _ K: Int, _ num: Int, _ result: inout [Int]) {
        if (N == 0) {
            result.append(num)
            return
        }
        
        let addNext = num % 10 - K
        if (addNext >= 0) {
            helper(N-1, K, num * 10 + addNext, &result)
        }
        if (K == 0) {
            return
        }
        let minusNext = num % 10 + K
        if (minusNext < 10) {
            helper(N-1, K, num * 10 + minusNext, &result)
        }
    }
}
