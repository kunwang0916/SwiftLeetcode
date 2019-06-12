//
//  Medium981.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/11/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 981. Time Based Key-Value Store
 https://leetcode.com/problems/time-based-key-value-store
 Time: O(LogN) for set, O(1) for set
 Space: O(N)
 **/

import UIKit

class Medium981: NSObject {
    class TimeMap {
        class TimeValue {
            var timeArray:[Int]
            var valueArray:[String]
            init() {
                timeArray = []
                valueArray = []
            }
            
            func searchForTime(_ timestamp: Int) -> String {
                // binary search
                var l = 0
                var h = timeArray.count - 1
                var result = ""
                while l <= h {
                    let mid = l + (h-l) / 2
                    if timeArray[mid] == timestamp {
                        return valueArray[mid]
                    } else if timeArray[mid] > timestamp {
                        h = mid - 1
                    } else {
                        result = valueArray[mid]
                        l = mid + 1
                    }
                }
                
                return result
            }
        }
        
        var map:[String:TimeValue]
        /** Initialize your data structure here. */
        init() {
            map = [:]
        }
        
        func set(_ key: String, _ value: String, _ timestamp: Int) {
            let tv = map[key] ?? TimeValue()
            tv.timeArray.append(timestamp)
            tv.valueArray.append(value)
            
            map[key] = tv
        }
        
        func get(_ key: String, _ timestamp: Int) -> String {
            guard let tv = map[key] else {
                return ""
            }
            
            return tv.searchForTime(timestamp)
        }
    }
}


