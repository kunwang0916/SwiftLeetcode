//
//  Medium986.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/29/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 986. Interval List Intersections
 https://leetcode.com/problems/interval-list-intersections/
 time: O(M+N)
 space: O(M+N)
 **/

import UIKit


class Medium986: NSObject {
    func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        
        var index1 = 0
        var index2 = 0
        while index1 < A.count && index2 < B.count {
            let i1 = A[index1]
            let i2 = B[index2]
            let low = max(i1[0], i2[0])
            let high = min(i1[1], i2[1])
            
            if low <= high {
                result.append([low, high])
            }
            
            if i1[1] < i2[1] {
                index1 += 1
            } else {
                index2 += 1
            }
        }
        
        return result
    }
}
