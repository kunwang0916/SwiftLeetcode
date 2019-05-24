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
                    bfs(&tGrid, row, col, height, width)
                }
            }
        }
        return result;
    }
    
    public class func isPointValid(_ grid: inout [[Character]], _ row:Int, _ col:Int, _ rows: Int, _ cols: Int) -> Bool {
        if row < 0 || row >= rows || col < 0 || col >= cols {
            return false
        }
        
        if grid[row][col] != "1" {
            return false
        }
        
        return true
    }
    
    public class func bfs(_ grid: inout [[Character]], _ row:Int, _ col:Int, _ rows: Int, _ cols: Int) {
        var queue = [[Int]]()
        queue.append([row, col])
        while let point = queue.first {
            let row = point[0]
            let col = point[1]
            grid[row][col] = Character("3")
            queue.removeFirst()
            let neighbors:[[Int]] = [[row+1, col], [row-1, col], [row, col+1], [row, col-1]]
            for np in neighbors {
                let nr = np[0]
                let nc = np[1]
                if isPointValid(&grid, nr, nc, rows, cols) {
                    queue.append([nr, nc])
                }
            }
        }
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
