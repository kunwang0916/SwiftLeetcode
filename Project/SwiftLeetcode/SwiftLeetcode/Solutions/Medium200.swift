//
//  Medium200.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 200. Number of Islands
 https://leetcode.com/problems/number-of-islands/description/
 **/
import UIKit

public class Medium200: NSObject {
    // time : width * heigth
    public class func numIslands(_ grid: [[Character]]) -> Int {
        var result = 0
        if grid.count == 0 || grid[0].count == 0 {
            return 0
        }
        
        var tGrid = grid
        let height = grid.count
        let width = grid[0].count
        
        for row in 0..<height {
            for col in 0..<width {
                if tGrid[row][col] == "1" {
                    result += 1
                    dfs(&tGrid, row, col, height, width)
                }
            }
        }
        return result;
    }
    
    class func dfs(_ grid: inout [[Character]], _ row:Int, _ col:Int, _ height: Int, _ width: Int) {
        if (row < 0 || row >= height || col < 0 || col >= width || grid[row][col] == "0") {
            return
        }
        grid[row][col] = "0"
        dfs(&grid, row+1, col, height, width)
        dfs(&grid, row-1, col, height, width)
        dfs(&grid, row, col+1, height, width)
        dfs(&grid, row, col-1, height, width)
    }
}
