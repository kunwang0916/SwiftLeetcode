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
        var visited = Set<Character>()
        let n = s.count
        var step = 0
        var i = 0
        var j = 0
        
        while j < n && i < n {
            let jc = charAt(s, j)
            if visited.contains(jc) {
                let ic = charAt(s, i)
                visited.remove(ic)
                i += 1
            } else {
                visited.insert(jc)
                j += 1
                step = max(step, j-i)
            }
        }
        return step
    }
    
    func charAt(_ s: String, _ i: Int) -> Character {
        return s[s.index(s.startIndex, offsetBy: i)]
    }
}
