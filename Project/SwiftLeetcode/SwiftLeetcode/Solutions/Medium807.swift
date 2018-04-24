//
//  Medium807.swift
//  SwiftLeetcode
//
//  Created by roosky on 4/24/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 
 807. Max Increase to Keep City Skyline
 https://leetcode.com/problems/max-increase-to-keep-city-skyline/description/
 
 In a 2 dimensional array grid, each value grid[i][j] represents the height of a building located there. We are allowed to increase the height of any number of buildings, by any amount (the amounts can be different for different buildings). Height 0 is considered to be a building as well.
 
 At the end, the "skyline" when viewed from all four directions of the grid, i.e. top, bottom, left, and right, must be the same as the skyline of the original grid. A city's skyline is the outer contour of the rectangles formed by all the buildings when viewed from a distance. See the following example.
 
 What is the maximum total sum that the height of the buildings can be increased?
 
 Example:
 Input: grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
 Output: 35
 Explanation:
 The grid is:
 [ [3, 0, 8, 4],
 [2, 4, 5, 7],
 [9, 2, 6, 3],
 [0, 3, 1, 0] ]
 
 The skyline viewed from top or bottom is: [9, 4, 8, 7]
 The skyline viewed from left or right is: [8, 7, 9, 3]
 
 The grid after increasing the height of buildings without affecting skylines is:
 
 gridNew = [ [8, 4, 8, 7],
 [7, 4, 7, 7],
 [9, 4, 8, 7],
 [3, 3, 3, 3] ]
 
 Notes:
 
 1 < grid.length = grid[0].length <= 50.
 All heights grid[i][j] are in the range [0, 100].
 All buildings in grid[i][j] occupy the entire grid cell: that is, they are a 1 x 1 x grid[i][j] rectangular prism.
 **/
 

import UIKit

class Medium807: NSObject {
    
    // time: O(n), space: width + height
    public class func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var sum = 0
        let width = grid[0].count
        let heigth = grid.count
        var horiSkyline = [Int]()
        for _ in 0..<width  {
            horiSkyline.append(0)
        }
        var vertSkyline = [Int]()
        for _ in 0..<heigth  {
            vertSkyline.append(0)
        }
        
        // get the skyline value
        for x in 0..<width {
            for y in 0..<heigth {
                let value = grid[x][y]
                if (value) > horiSkyline[x] {
                    horiSkyline[x] = value
                }
                if (value) > vertSkyline[y] {
                    vertSkyline[y] = value
                }
            }
        }
        
        // calculating the sum
        for x in 0..<width {
            for y in 0..<heigth {
                let value = grid[x][y]
                let maxValue = min(vertSkyline[y], horiSkyline[x])
                sum += maxValue - value;
            }
        }
 
        return sum
    }
}
