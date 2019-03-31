//
//  Easy1029.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/30/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 1018. Binary Prefix Divisible By 5
 https://leetcode.com/problems/binary-prefix-divisible-by-5/
 time: O(N)
 space: O(1)
 **/

import UIKit

public class Easy1018: NSObject {
    func prefixesDivBy5(_ A: [Int]) -> [Bool] {
        var result = Array(repeating: false, count: A.count)
        var num = 0
        for i in 0..<A.count {
            // tricky step, mod 5 to avoid overflow
            num = num * 2 + A[i] % 5
            result[i] = (num == 0)
        }
        return result
    }
}
