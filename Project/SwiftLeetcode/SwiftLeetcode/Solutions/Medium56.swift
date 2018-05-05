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
 **/
import UIKit

public class Medium56: NSObject {
    public class func merge(_ intervals: [Interval]) -> [Interval] {
        var ints = intervals.sorted { (a, b) -> Bool in
            a.start < b.start
        }
        
        var i = 0
        while i < ints.count - 1 {
            //key
            if ints[i].end >= ints[i+1].start {
                // tricky point
                ints[i].end = max(ints[i].end, ints[i+1].end)
                ints.remove(at: i+1)
            } else {
                i += 1
            }
        }
        
        return ints
    }
}
