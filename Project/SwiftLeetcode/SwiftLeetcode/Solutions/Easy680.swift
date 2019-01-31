//
//  Easy680.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/31/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 680. Valid Palindrome II
 https://leetcode.com/problems/valid-palindrome-ii/
 time: O(N)
 space: O(1)
 **/

import UIKit

class Easy680: NSObject {
    func validPalindrome(_ s: String) -> Bool {
        var low = 0
        var high = s.count - 1
        while low < high {
            if charAtIndex(s, low) != charAtIndex(s, high) {
                return isValidPalindrome(s, low, high-1) || isValidPalindrome(s, low+1, high)
            }
            low += 1
            high -= 1
        }
        return true
    }
    
    func isValidPalindrome(_ s:String, _ from:Int, _ to: Int) -> Bool {
        var f = from
        var t = to
        while f < t {
            if charAtIndex(s, f) != charAtIndex(s, t) {
                return false
            }
            f += 1
            t -= 1
        }
        return true
    }
    
    func charAtIndex(_ s: String, _ index: Int) -> Character {
        // this is O(n) in Swift, instead of O(1), so it will too long for the leetcode test case.
        return s[s.index(s.startIndex, offsetBy: index)]
    }
}
