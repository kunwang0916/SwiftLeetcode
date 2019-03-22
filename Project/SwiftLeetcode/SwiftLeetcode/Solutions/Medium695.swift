//
//  Medium695.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/21/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 695. Max Area of Island
 https://leetcode.com/problems/max-area-of-island/
 time: O(MN)
 space: O(MN)
 **/

import UIKit

class Medium695: NSObject {
    var maxArea = 0
    var curArea = 0
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == 1 {
                    self.curArea = 0
                    dfs(&grid, row, col)
                }
            }
        }
        
        return self.maxArea
    }
    
    func dfs(_ grid: inout [[Int]], _ row: Int,  _ col: Int) {
        if row < 0 || row > grid.count - 1 {
            return
        }
        if col < 0 || col > grid[0].count - 1 {
            return
        }
        
        if grid[row][col] == 0 {
            return
        }
        
        self.curArea += 1
        self.maxArea = max(self.curArea, self.maxArea)
        
        grid[row][col] = 0
        dfs(&grid, row + 1, col)
        dfs(&grid, row - 1, col)
        dfs(&grid, row, col + 1)
        dfs(&grid, row, col - 1)
    }
}
