//
//  Medium50.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/19/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 50. Pow(x, n)
 https://leetcode.com/problems/powx-n/
 time: O(LogN)
 space: O(LogN)
 **/

import UIKit

public class Medium50: NSObject {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var nx = x
        var nn = n
        if n < 0 {
            nx = 1 / nx
            nn = -nn
        }
        return fastPow(nx, nn)
    }
    
    func fastPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1.0
        }
        let half = fastPow(x, n/2);
        if n % 2 == 0 {
            return half * half
        } else {
            return half * half * x
        }
    }
}
