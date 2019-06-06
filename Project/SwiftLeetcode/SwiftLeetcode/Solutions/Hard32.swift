//
//  Hard32.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/5/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 32. Longest Valid Parentheses
 https://leetcode.com/problems/longest-valid-parentheses/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Hard32: NSObject {
    func longestValidParentheses(_ s: String) -> Int {
        var maxLength = 0
        var leftCount = 0
        var rightCount = 0
        
        for c in s {
            if c == "(" {
                leftCount += 1
            } else {
                rightCount += 1
            }
            
            if leftCount == rightCount {
                maxLength = max(leftCount * 2, maxLength)
            } else if (rightCount >= leftCount ) {
                rightCount = 0
                leftCount = 0
            }
        }
        
        leftCount = 0
        rightCount = 0
        for c in s.reversed() {
            if c == "(" {
                leftCount += 1
            } else {
                rightCount += 1
            }
            
            if leftCount == rightCount {
                maxLength = max(leftCount * 2, maxLength)
            } else if (leftCount >= rightCount ) {
                rightCount = 0
                leftCount = 0
            }
        }
        
        return maxLength
    }
}
