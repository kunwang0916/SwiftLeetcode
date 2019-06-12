//
//  Easy344.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/11/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 344. Reverse String
 https://leetcode.com/problems/reverse-string/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Easy344: NSObject {
    func reverseString(_ s: inout [Character]) {
        var l = 0
        var r = s.count - 1
        while l < r {
            let c = s[l]
            s[l] = s[r]
            s[r] = c
            l += 1
            r -= 1
        }
    }
}
