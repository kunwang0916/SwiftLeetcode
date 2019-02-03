//
//  Easy67.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/2/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 67. Add Binary
 https://leetcode.com/problems/add-binary/
 time: O(N)
 space: O(1)
 **/

import UIKit

public class Easy67: NSObject {
    func addBinary(_ a: String, _ b: String) -> String {
        var la = a.count - 1
        var lb = b.count - 1
        var carry = 0
        var result = ""
        while (la >= 0 || lb >= 0 || carry == 1) {
            var sum = 0
            if la >= 0 {
                if (charAt(a, la) == "1") {
                    sum += 1
                }
                
                la -= 1
            }
            
            if lb >= 0 {
                if (charAt(b, lb) == "1" ) {
                    sum += 1
                }
                lb -= 1
            }
            
            if carry == 1 {
                sum += 1
            }
            
            carry = sum / 2
            if sum % 2 == 1 {
                result = "1" + result
            } else {
                result = "0" + result
            }
        }
        
        return result
    }
    
    func charAt(_ s: String, _ i: Int) -> Character {
        return s[s.index(s.startIndex, offsetBy:i)];
    }
}
