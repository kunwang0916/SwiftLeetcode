//
//  Medium151.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/21/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 151. Reverse Words in a String
 https://leetcode.com/problems/reverse-words-in-a-string/
 time: O(n)
 space: O(n)
 **/

import UIKit

class Medium151: NSObject {
    func reverseWords(_ s: String) -> String {
        let trimed = s.split(separator: " ").joined(separator: " ")
        var chars = Array(trimed)
        chars.reverse()
        
        var head = 0
        while head < chars.count {
            var tail = head
            while tail < chars.count && chars[tail] != " " {
                tail += 1
            }
            
            chars[head..<tail].reverse()
            head = tail + 1
        }
        
        return String(chars)
    }
}
