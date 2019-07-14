//
//  Medium244.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 244. Shortest Word Distance II
 https://leetcode.com/problems/shortest-word-distance-ii/
 time: O(N)
 space: O(N)
 **/

import UIKit

class Medium244: NSObject {
    var map = [String: [Int]]()
    
    init(_ words: [String]) {
        // init map
        for i in 0..<words.count {
            var array = map[words[i]] ?? [Int]()
            array.append(i)
            map[words[i]] = array
        }
        
    }
    
    func shortest(_ word1: String, _ word2: String) -> Int {
        let list1 = map[word1] ?? []
        let list2 = map[word2] ?? []
        
        var i1 = 0
        var i2 = 0
        var minDist = Int.max
        
        while i1 < list1.count && i2 < list2.count {
            minDist = min(minDist, abs(list1[i1] - list2[i2]))
            if list1[i1] < list2[i2] {
                i1 += 1
            } else {
                i2 += 1
            }
        }
        
        return minDist
    }
}
