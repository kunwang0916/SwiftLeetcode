//
//  Easy977.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/19/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 977. Squares of a Sorted Array
 https://leetcode.com/problems/squares-of-a-sorted-array/
 time: O(N)
 space: O(n)
 **/

import UIKit

class Easy977: NSObject {
    func sortedSquares(_ A: [Int]) -> [Int] {
        // find index of the largest negative number
        var ni = 0
        for i in 0..<A.count {
            if A[i] >= 0 {
                ni = i - 1
                break
            }
        }
        // 2 pointer to grow and push into array
        var result = [Int]()
        var pi = ni + 1
        while ni >= 0 && pi < A.count {
            let nagativeSqure = A[ni] * A[ni]
            let postiveSqure = A[pi] * A[pi]
            if nagativeSqure < postiveSqure {
                result.append(nagativeSqure)
                ni -= 1
            } else {
                result.append(postiveSqure)
                pi += 1
            }
        }
        
        while ni >= 0 {
            result.append(A[ni] * A[ni])
            ni -= 1
        }
        
        while pi < A.count {
            result.append(A[pi] * A[pi])
            pi += 1
        }
        
        return result
    }
}
