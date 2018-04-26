//
//  Medium74.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 74. Search a 2D Matrix
 https://leetcode.com/problems/search-a-2d-matrix/description/
 Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
 
 Integers in each row are sorted from left to right.
 The first integer of each row is greater than the last integer of the previous row.
 **/

import UIKit

public class Medium74: NSObject {
    // binary search
    // time: O(log(m*n)) space: O(1)
    public class func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix[0].count == 0 {
            return false
        }
        
        let height = matrix.count
        let width = matrix[0].count
        var end = height * width - 1
        var start = 0
        
        while end >= start {
            let index = start + (end - start) / 2
            let value = matrix[index / width][index % width]
        
            if (value == target) {
                return true
            } else if (value > target) {
                end = index - 1
            } else {
                start = index + 1
            }
        }
        
        return false
    }
}
