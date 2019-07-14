//
//  Medium56.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 56. Merge Intervals
 https://leetcode.com/problems/merge-intervals/
 time: O(NLogN) sor
 space: O(N)
 **/
import UIKit

public class Medium56: NSObject {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        if intervals.isEmpty {
            return []
        }
        
        var ints = intervals.sorted { $0[0] < $1[0] }
        var result = [[Int]]()
        var curInt = ints[0]
        
        for int in ints {
            if int[0] <= curInt[1] {
                curInt[1] = max(curInt[1], int[1])
            } else {
                result.append(curInt)
                curInt = int
            }
        }
        
        result.append(curInt)
        
        return result
    }
}
