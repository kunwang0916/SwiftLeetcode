//
//  Easy252.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/31/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 252. Meeting Rooms
 https://leetcode.com/problems/meeting-rooms/
 space: O(1)
 time: O(nLogn), sort
 **/

import UIKit

class Easy252: NSObject {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        if intervals.count == 0 {
            return true
        }
        var ints = intervals
        ints.sort{ $0.start < $1.start }
        for i in 1..<ints.count {
            if ints[i].start < ints[i-1].end {
                return false
            }
        }
        
        return true
    }
}
