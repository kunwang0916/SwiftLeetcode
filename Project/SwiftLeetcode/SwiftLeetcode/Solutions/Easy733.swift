//
//  Easy733.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/13/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 733. Flood Fill
 https://leetcode.com/problems/flood-fill/
 time: O(N)
 space: O(N), recurive call stack
 **/

import UIKit

public class Easy733: NSObject {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        self.dfs(&image, sr, sc, newColor)
        return image
    }
    
    func dfs(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) {
        let originalColor = image[sr][sc]
        image[sr][sc] = -1
        
        
        if sr<image.count - 1 {
            if image[sr+1][sc] == originalColor {
                dfs(&image, sr+1, sc, newColor)
            }
        }
        
        if sr > 0 {
            if image[sr-1][sc] == originalColor {
                dfs(&image, sr-1, sc, newColor)
            }
        }
        
        if sc < (image[0].count - 1) {
            if image[sr][sc+1] == originalColor {
                dfs(&image, sr, sc+1, newColor)
            }
        }
        
        if sc > 0 {
            if image[sr][sc-1] == originalColor {
                dfs(&image, sr, sc-1, newColor)
            }
        }
        image[sr][sc] = newColor
    }
}
