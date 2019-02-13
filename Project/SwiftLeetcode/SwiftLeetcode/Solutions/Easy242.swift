//
//  Easy242.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/12/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 242. Valid Anagram
 https://leetcode.com/problems/valid-anagram/
 time: O(N)
 space: O(1) max is 26.
 **/

import UIKit

public class Easy242: NSObject {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var counter = [Character: Int]()
        
        for c in s {
            let cn = counter[c] ?? 0
            counter[c] = cn + 1
        }
        
        for c in t {
            let cn = counter[c] ?? 0
            if cn == 0 {
                return false
            } else {
                counter[c] = cn - 1
            }
        }
        
        return true
    }
}
