//
//  Medium78.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/28/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 78. Subsets
 https://leetcode.com/problems/subsets/
 time: O(N * 2^N)
 space: O(N)
 **/

import UIKit

class Medium78: NSObject {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        result.append([])
        for num in nums {
            let length = result.count
            for i in 0..<length {
                var res = result[i]
                res.append(num)
                result.append(res)
            }
        }
        
        return result
    }
}
