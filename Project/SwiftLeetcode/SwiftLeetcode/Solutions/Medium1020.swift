//
//  Medium1031.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/30/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 1020. Number of Enclaves
 https://leetcode.com/problems/number-of-enclaves/
 time: O(MN)
 space: O(MN)
 **/

import UIKit

class Medium1020: NSObject {
    func numEnclaves(_ A: [[Int]]) -> Int {
        var grid = A
        for row in 0..<grid.count {
            dfs(&grid, row, 0)
            dfs(&grid, row, grid[0].count - 1)
        }
        
        if grid.count > 0 && grid[0].count > 0 {
            for col in 0..<grid[0].count {
                dfs(&grid, 0, col)
                dfs(&grid, grid.count - 1, col)
            }
        }
        
        var result = 0
        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                result += grid[row][col]
            }
        }
        return result
    }
    
    func dfs(_ grid: inout [[Int]], _ row: Int, _ col: Int) {
        if grid.count == 0 || grid[0].count == 0 {
            return
        }
        if row < 0 || row > grid.count - 1
            || col < 0 || col > grid[0].count - 1 {
            return
        }
        
        if grid[row][col] == 0 {
            return
        }
        
        grid[row][col] = 0
        
        dfs(&grid, row + 1, col);
        dfs(&grid, row - 1, col);
        dfs(&grid, row, col + 1);
        dfs(&grid, row, col - 1);
    }
}
