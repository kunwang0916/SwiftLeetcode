//
//  Medium49.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 49. Group Anagrams
 https://leetcode.com/problems/group-anagrams/description/
 **/

import UIKit

public class Medium49: NSObject {
    public class func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result:[[String]] = []
        var map:[String: Int] = [:]
        for str in strs {
            // get the key for string
            let key = String(str.sorted())
            if map.keys.contains(key) {
                // if existing, then append
                result[map[key]!].append(str)
            } else {
                // if new, then add to map
                result.append([str])
                map[key] = result.count - 1
            }
        }
        
        return result
    }
}
