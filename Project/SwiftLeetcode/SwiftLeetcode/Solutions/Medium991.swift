//
//  Medium991.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/11/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 991. Broken Calculator
 https://leetcode.com/problems/broken-calculator/
 time; O(Log(Y-X))
 space: O(1)
 **/

import UIKit

class Medium991: NSObject {
    func brokenCalc(_ X: Int, _ Y: Int) -> Int {
        if X >= Y {
            return X - Y
        }
        if Y % 2 == 0 {
            return 1 + brokenCalc(X, Y / 2)
        } else {
            return 1 + brokenCalc(X, Y + 1)
        }
    }
}
