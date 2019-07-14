//
//  Medium370.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 370. Range Addition
 https://leetcode.com/problems/range-addition/
 time: O(N + K)
 space: O(1)
 **/

import UIKit

class Medium370: NSObject {
    func getModifiedArray(_ length: Int, _ updates: [[Int]]) -> [Int] {
        var result = Array(repeating: 0, count: length)
        for update in updates {
            let (startIndex, endIndex, inc) = (update[0], update[1], update[2])
            result[startIndex] += inc
            if endIndex < length - 1 {
                result[endIndex+1] -= inc
            }
        }
        
        for i in 0..<result.count - 1 {
            result[i+1] = result[i] + result[i+1]
        }
        
        return result
    }
}
