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
    public static func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        if intervals.isEmpty {
            return 0
        }
        
        var starts = intervals.map { $0[0] }
        var ends = intervals.map { $0[1] }
        starts.sort()
        ends.sort()
        
        var rooms = 0
        // end Index
        var ei = 0
        
        for si in 0..<starts.count {
            if starts[si] >= ends[ei] {
                rooms -= 1
                ei += 1
            }
            rooms += 1
        }
        
        return rooms
    }

}
