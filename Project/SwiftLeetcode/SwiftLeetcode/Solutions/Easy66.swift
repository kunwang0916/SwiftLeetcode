//
//  Easy66.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/30/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 66. Plus One
 https://leetcode.com/problems/plus-one/description/
 **/

import UIKit

public class Easy66: NSObject {
    public class func plusOne(_ digits: [Int]) -> [Int] {
        var result = [Int]()
        var buffer = 1
        var index = digits.count - 1
        while index >= 0 {
            let v = buffer + digits[index]
            buffer = v / 10
            if (v > 9) {
                result.insert(v % 10, at: 0)
            } else {
                result.insert(v, at: 0)
            }
            
            index -= 1
        }
        if (buffer > 0) {
            result.insert(buffer, at: 0)
        }
        
        return result
    }
}
