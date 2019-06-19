//
//  Easy359.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/19/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 359. Logger Rate Limiter
 https://leetcode.com/problems/logger-rate-limiter/
 time: O(1)
 space: O(N)
 **/
import UIKit

class Easy359: NSObject {
    class Logger {
        var map:[String:Int] = [:]
        let threshold = 10
        /** Initialize your data structure here. */
        init() {
            
        }
        
        /** Returns true if the message should be printed in the given timestamp, otherwise returns false.
         If this method returns false, the message will not be printed.
         The timestamp is in seconds granularity. */
        func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
            if timestamp < (map[message] ?? 0) {
                return false
            }
            
            self.map[message] = timestamp + 10
            
            return true
        }
    }
}
