//
//  Medium3.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/18/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 3. Longest Substring Without Repeating Characters
 https://leetcode.com/problems/longest-substring-without-repeating-characters/
 time: O(N)
 space: O(N)
 **/
 
 
import UIKit

class Medium3: NSObject {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map = [Character: Int]()
        let n = s.count
        var step = 0
        var i = 0
        var j = 0
        
        while j < n {
            let jc = charAt(s, j)
            if let index = map[jc] {
                i = max(index, i)
            }
            step = max(step, j-i+1)
            j += 1
            map[jc] = j
        }
        return step
    }
    
    func charAt(_ s: String, _ i: Int) -> Character {
        return s[s.index(s.startIndex, offsetBy: i)]
    }
}
