//
//  Medium253.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/31/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 253. Meeting Rooms II
 https://leetcode.com/problems/meeting-rooms-ii/
 time: O(NlogN)
 space: O(n)
 **/
import UIKit

public class Medium253: NSObject {
    public class func minMeetingRooms(_ intervals: [Interval]) -> Int {
        if intervals.isEmpty {
            return 0
        }
        var starts = Array(repeating: 0, count: intervals.count)
        var ends = Array(repeating: 0, count: intervals.count)
        
        for i in 0..<intervals.count {
            starts[i] = intervals[i].start
            ends[i] = intervals[i].end
        }
        
        starts = starts.sorted()
        ends = ends.sorted()
        
        var room = 0
        var eIndex = 0
        for i in 0..<starts.count {
            if starts[i] >= ends[eIndex] {
                room -= 1
                eIndex += 1
            }
            room += 1
        }
        
        return room
    }

}
