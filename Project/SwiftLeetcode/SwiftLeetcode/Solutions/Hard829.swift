//
//  Hard829.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/15/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit
/**
 829. Consecutive Numbers Sum
 https://leetcode.com/problems/consecutive-numbers-sum/
 time: (N^0.5)
 space: O(1)
 
 this is meth problem, I just copy paste solution
 **/
public class Hard829: NSObject {
    public func consecutiveNumbersSum(_ N: Int) -> Int {
        var count = 0
        var m = 1
        while m <= N {
            let mx = N - (m * (m-1)) / 2
            if mx <= 0 {
                break
            }
            if mx % m == 0 {
                count += 1
            }
            m += 1
        }
        return count
    }
}
