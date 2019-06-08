//
//  Hard340.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/8/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 340. Longest Substring with At Most K Distinct Characters
 https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters/
 time: O(N)
 space: O(N)
 **/
import UIKit

class Hard340: NSObject {
    func lengthOfLongestSubstringKDistinct(_ s: String, _ k: Int) -> Int {
        var uniqueCount = 0
        var uniqueMap:[Character: Int] = [:]
        var maxLen = 0
        let sArray = Array(s)
        var head = 0
        for tail in 0..<sArray.count {
            let c = sArray[tail]
            let cv = uniqueMap[c] ?? 0
            if cv == 0 {
                uniqueCount += 1
            }
            uniqueMap[c] = cv + 1
            
            if uniqueCount <= k {
                maxLen = max(tail - head + 1, maxLen)
            } else {
                while uniqueCount > k {
                    let hc = sArray[head]
                    let hv = uniqueMap[hc] ?? 0
                    if hv == 1 {
                        uniqueCount -= 1
                    }
                    uniqueMap[hc] = hv - 1
                    head += 1
                }
            }
        }
        
        return maxLen
    }
}
