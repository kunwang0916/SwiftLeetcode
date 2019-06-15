//
//  Easy125.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/14/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 125. Valid Palindrome
 https://leetcode.com/problems/valid-palindrome/
 time: O(N)
 space: O(1)
 **/
import UIKit

public class Easy125: NSObject {
    public func isPalindrome(_ s: String) -> Bool {
        var lp = 0
        var rp = s.count - 1
        let sArray = Array(s)
        while (lp < rp) {
            while(lp < rp && sArray[lp].isLetter == false) {
                lp += 1
            }
            
            while(lp < rp && sArray[rp].isLetter == false) {
                rp -= 1
            }
            
            if (sArray[lp].lowercased() == sArray[rp].lowercased()) {
                lp += 1
                rp -= 1
                continue
            } else {
                return false
            }
        }
        
        return true
    }
}
