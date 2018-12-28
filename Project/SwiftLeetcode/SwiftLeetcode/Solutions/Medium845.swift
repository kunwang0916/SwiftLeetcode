//
//  Medium845.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/27/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 https://leetcode.com/problems/longest-mountain-in-array
 845. Longest Mountain in Array
 space: O(N)
 time: O(N)
 **/

import UIKit

class Medium845: NSObject {
    func longestMountain(_ A: [Int]) -> Int {
        if (A.count < 3) {
            return 0
        }
        var l2r = Array(repeating: 0, count: A.count)
        var r2l = Array(repeating: 0, count: A.count)
        
        for i in 1..<A.count {
            if A[i] > A[i-1] {
                l2r[i] = l2r[i-1] + 1
            }
        }
        
        for i in stride(from: A.count - 2, through: 1, by: -1) {
            if A[i] > A[i+1] {
                r2l[i] = r2l[i+1] + 1
            }
        }
        
        var result = 0
        for i in 1..<A.count {
            if (l2r[i] > 0 && r2l[i] > 0) {
                result = max(result, l2r[i] + r2l[i] + 1)
            }
        }
        
        return result
    }
}
