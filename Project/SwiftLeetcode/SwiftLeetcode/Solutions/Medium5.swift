//
//  Medium5.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/25/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 5. Longest Palindromic Substring
 https://leetcode.com/problems/longest-palindromic-substring/
 time: O(n^2)
 space: O(1)
 **/
import UIKit

class Medium5: NSObject {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 1 {
            return ""
        }
        
        var array = Array(s)
        var low = 0
        var high = 0
        for i in 0..<array.count {
            let lenOdd = lp(&array, i, i)
            let lenEven = lp(&array, i, i+1)
            let len = max(lenOdd, lenEven)
            if len > high - low {
                low = i - (len - 1) / 2
                high = i + (len / 2)
            }
        }
        return String(array[low...high])
    }
    
    func lp(_ array: inout [Character], _ low: Int, _ high: Int) -> Int {
        var l = low
        var h = high
        while (l >= 0 && h < array.count && array[l] == array[h]) {
            l -= 1
            h += 1
        }
        return h - l - 1
    }
}
