//
//  Easy69.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/29/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 69. Sqrt(x)
 https://leetcode.com/problems/sqrtx
 time: O(LogN), binary search
 space: O(1)
 **/


import UIKit

class Easy69: NSObject {
    func mySqrt(_ x: Int) -> Int {
        var low = 0
        var high = x + 1
        while low < high {
            let m = low + (high - low) / 2
            if m * m > x {
                high = m
            } else {
                low = m + 1
            }
        }
        return low - 1
    }
}
