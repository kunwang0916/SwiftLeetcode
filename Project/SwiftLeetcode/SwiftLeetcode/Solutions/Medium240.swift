//
//  Meidum240.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 240. Search a 2D Matrix II
 https://leetcode.com/problems/search-a-2d-matrix-ii/description/
 
 Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
 
 Integers in each row are sorted in ascending from left to right.
 Integers in each column are sorted in ascending from top to bottom.
 For example,
 
 Consider the following matrix:
 
 [
 [1,   4,  7, 11, 15],
 [2,   5,  8, 12, 19],
 [3,   6,  9, 16, 22],
 [10, 13, 14, 17, 24],
 [18, 21, 23, 26, 30]
 ]
 Given target = 5, return true.
 Given target = 20, return false.
 **/
import UIKit

public class Medium240: NSObject {
    
    public class func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        return scanSearch(matrix, target)
    }
    
    //binary search, time: O(heigth * log(width)), space: O(1)
    class func binarySearch(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix[0].count == 0 {
            return false
        }
        
        let height = matrix.count
        let width = matrix[0].count
        for row in 0..<height {
            var from = 0
            var to = width - 1
            while(from <= to) {
                let index = from + (to - from) / 2
                let val = matrix[row][index]
                if (val == target) {
                    return true
                } else if (val < target) {
                    from = index + 1
                } else {
                    to = index - 1
                }
            }
        }
        
        return false;
    }
    
    // scan: time: O(m+n) space: O(1)
    class func scanSearch(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix[0].count == 0 {
            return false
        }
        var row = 0
        var col = matrix[0].count - 1
        while col >= 0 && row < matrix.count {
            let val = matrix[row][col]
            if (val == target) {
                return true
            } else if (val < target) {
                // move to next row
                row += 1
            } else {
                // move to left col
                col -= 1
            }
        }
        return false
    }
}
