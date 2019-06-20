//
//  Hard329.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/19/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 329. Longest Increasing Path in a Matrix
 https://leetcode.com/problems/longest-increasing-path-in-a-matrix
 time: O(MN)
 space: O(MN)
 dfs + Memoization
 **/

import UIKit

public class Hard329: NSObject {
    let dirctions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    
    public func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
        if matrix.isEmpty {
            return 0
        }
        
        var matrix = matrix
        let height = matrix.count
        let width = matrix[0].count
        var memo = Array(repeating:  Array(repeating:0, count:width), count:height)
        
        var result = 0
        for row in 0..<height {
            for col in 0..<width {
                result = max(result, self.dfs(&matrix, &memo, row, col, height, width))
            }
        }
        
        for row in memo {
            print(row)
        }
        return result
    }
    
    func dfs(_ matrix: inout [[Int]], _ memo: inout [[Int]], _ row: Int, _ col: Int, _ height: Int, _ width: Int) -> Int {
        if memo[row][col] > 0 {
            return memo[row][col]
        }
        
        for d in dirctions {
            let nextRow = row + d[0]
            let nextCol = col + d[1]
            if ( nextRow < 0 || nextRow >= height || nextCol < 0  || nextCol >= width ) {
                continue
            }
            
            if (matrix[row][col] <= matrix[nextRow][nextCol]) {
                continue
            }
            
            let neighborLength = self.dfs(&matrix, &memo, nextRow, nextCol, height, width)
            memo[row][col] = max(memo[row][col], neighborLength)
        }
        
        memo[row][col] += 1
        return memo[row][col]
    }
}
