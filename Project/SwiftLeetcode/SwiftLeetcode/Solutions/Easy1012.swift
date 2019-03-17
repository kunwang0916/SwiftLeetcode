//
//  Easy1012.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/16/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1012. Complement of Base 10 Integer
 https://leetcode.com/problems/complement-of-base-10-integer/
 time: O(N)
 space: O(N), str will increase accordding to the N value increase
 **/

import UIKit

public class Easy1012: NSObject {
    func bitwiseComplement(_ N: Int) -> Int {
        if N == 0 {
            return 1
        }
        var n = N;
        var comp = ""
        while n > 0 {
            if n % 2 == 0 {
                comp = "1" + comp
            } else {
                comp = "0" + comp
            }
            n = n / 2
        }
        
        var count = 0
        var result = 0
        for c in comp.reversed() {
            if c == "1" {
                result += Int(pow(Double(2), Double(count)))
            }
            count += 1
        }
        
        return result
    }
}
