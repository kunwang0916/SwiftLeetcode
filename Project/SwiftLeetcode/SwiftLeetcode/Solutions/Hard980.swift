//
//  Hard980.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/19/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Hard980: NSObject {
   
    public class func uniquePathsIII(_ grid: [[Int]]) -> Int {
        var mgrid = grid
        let height = mgrid.count
        let width = mgrid[0].count
        var row = -1, col = -1
        var count = 1
        for r in 0..<height {
            for c in 0..<width {
                if mgrid[r][c] == 0 {
                    count += 1
                }
                
                if (mgrid[r][c] == 1) {
                    row = r
                    col = c
                }
            }
        }
        
        return dfs(&mgrid, row, col, count)
    }
    
    class func dfs(_ grid: inout [[Int]], _ row: Int, _ col: Int, _ n: Int) -> Int {
        if row < 0 || row == grid.count || col < 0 || col == grid[0].count || grid[row][col] == -1  {
            return 0
        }
        
        if (grid[row][col] == 2) {
            if (n == 0) {
                return 1
            } else {
                return 0
            }
        }
        
        var sum: Int = 0
        
        grid[row][col] = -1
        sum += dfs(&grid, row, col+1, n-1)
        sum += dfs(&grid, row, col-1, n-1)
        sum += dfs(&grid, row+1, col, n-1)
        sum += dfs(&grid, row-1, col, n-1)
        grid[row][col] = 0
        
        return sum
    }
}
