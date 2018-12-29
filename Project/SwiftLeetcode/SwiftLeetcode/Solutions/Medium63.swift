//
//  Medium63.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/28/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/unique-paths-ii/
 63. Unique Paths II
 time: O(MN)
 space: O(MN)
 **/


import UIKit

public class Medium63: NSObject {
    public class func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        if (obstacleGrid.count == 0) {
            return 0
        }
        let rowSize = obstacleGrid.count + 1
        let colSize = obstacleGrid[0].count + 1
        let emptyRow = Array(repeating: 0, count: colSize)
        var dp = Array(repeating: emptyRow, count: rowSize)
        
        for i in 1..<rowSize {
            for j in 1..<colSize {
                if (obstacleGrid[i-1][j-1] == 1) {
                    dp[i][j] = 0
                    continue
                }
                if (i == 1 && j == 1) {
                    dp[i][j] = 1
                    continue
                }
                dp[i][j] = dp[i][j-1] + dp[i-1][j]
            }
        }
        
        return dp[rowSize-1][colSize-1]
    }
}
