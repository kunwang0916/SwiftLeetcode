//
//  Hard72.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/28/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 72. Edit Distance
 https://leetcode.com/problems/edit-distance/
 time: O(M*N)
 space: O(M*N)
 **/

import UIKit

class Hard72: NSObject {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        var arr1 = Array(word1)
        var arr2 = Array(word2)
        
        let rows = arr1.count + 1
        let cols = arr2.count + 1
        let dpRow = Array(repeating: 0, count: cols)
        var dpArray = Array(repeating:dpRow, count: rows)
        
        for i in (0..<rows) {
            dpArray[i][0] = i
        }
        
        for i in (0..<cols) {
            dpArray[0][i] = i
        }
        
        
        for r in (0..<arr1.count) {
            for c in (0..<arr2.count) {
                if arr1[r] == arr2[c] {
                    dpArray[r+1][c+1] = dpArray[r][c]
                } else {
                    let v = min(dpArray[r][c], dpArray[r+1][c], dpArray[r][c+1])
                    dpArray[r+1][c+1] = v+1
                }
            }
        }
        
        return dpArray[arr1.count][arr2.count]
    }
}
