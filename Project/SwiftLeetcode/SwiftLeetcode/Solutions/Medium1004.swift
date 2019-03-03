//
//  Medium1004.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/2/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1004. Max Consecutive Ones III
 https://leetcode.com/problems/max-consecutive-ones-iii/
 time: O(n)
 space: O(1)
 sliding window
 **/
import UIKit

public class Medium1004: NSObject {
    func longestOnes(_ A: [Int], _ K: Int) -> Int {
        var i = 0
        var k = K
        var maxLength = 0
        for j in 0..<A.count {
            if A[j] == 0 {
                k -= 1
            }
            
            while k < 0 {
                if A[i] == 0 {
                    k += 1
                }
                i += 1
            }
            
            maxLength = max(maxLength, j - i + 1)
        }
        return maxLength
    }
}
