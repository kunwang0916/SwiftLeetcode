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
 time: O(NKlogK)
 space: O(NK)
 N is the length of strs, and KK is the maximum length of a string in strs
 **/

import UIKit

public class Medium49: NSObject {
    public class func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [String:[String]]()
        
        for str in strs {
            let key = String(str.sorted())
            var array = map[key] ?? [String]()
            array.append(str)
            map[key] = array
        }
        
        return Array(map.values)
    }
}
