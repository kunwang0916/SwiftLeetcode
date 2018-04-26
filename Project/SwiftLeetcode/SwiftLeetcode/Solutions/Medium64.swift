//
//  Medium64.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/25/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 64. Minimum Path Sum
 https://leetcode.com/problems/minimum-path-sum/description/
 
 Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.
 
 Note: You can only move either down or right at any point in time.
 
 Example:
 
 Input:
 [
 [1,3,1],
 [1,5,1],
 [4,2,1]
 ]
 Output: 7
 Explanation: Because the path 1→3→1→1→1 minimizes the sum.
 **/
import UIKit

public class Medium64: NSObject {
    // dp: time:O(m+1 * n + 1), space:O(m+1 * n+1)
    public class func minPathSum(_ grid: [[Int]]) -> Int {
        let height = grid.count
        let width = grid[0].count
        let tRow = [Int](repeating: 0, count: width + 1)
        var sums = [[Int]](repeating: tRow, count: height + 1)
        for row in 1...height {
            for col in 1...width {
                let val = grid[row - 1][col - 1]
                if row == 1 {
                    sums[row][col] = val + sums[row][col - 1]
                } else if col == 1 {
                    sums[row][col] = val + sums[row - 1][col]
                } else {
                    sums[row][col] = val + min(sums[row][col - 1], sums[row - 1][col])
                }
            }
        }
        return sums[height][width]
    }
}
