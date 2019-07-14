//
//  Easy243.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 243. Shortest Word Distance
 https://leetcode.com/problems/shortest-word-distance/
 time: O(N)
 space: O(1)
 **/

import UIKit

class Easy243: NSObject {
    func shortestDistance(_ words: [String], _ word1: String, _ word2: String) -> Int {
        var index1 = -1
        var index2 = -1
        var minDis = Int.max
        for i in (0..<words.count) {
            if words[i] == word1 {
                index1 = i
            } else if words[i] == word2 {
                index2 = i
            } else {
                continue
            }
            
            if index1 != -1 && index2 != -1 {
                minDis = min(minDis, abs(index1 - index2))
            }
        }
        
        return minDis
    }
}
