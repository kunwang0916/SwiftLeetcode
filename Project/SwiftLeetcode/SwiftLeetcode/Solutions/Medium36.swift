//
//  Medium36.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/22/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 36. Valid Sudoku
 https://leetcode.com/problems/valid-sudoku/
 time: O(N)
 space: O(N)
 **/
import UIKit

class Medium36: NSObject {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var visited = Set<String>()
        let rows = board.count
        let cols = board[0].count
        
        for row in 0..<rows {
            for col in 0..<cols {
                let char = board[row][col]
                
                if char == "." {
                    continue
                }
                
                let rowKey = "\(row)-row-\(char)"
                let colKey = "\(col)-col-\(char)"
                let secKey = "\(row/3)-\(col/3)-sec-\(char)"
                
                if visited.contains(rowKey)
                    || visited.contains(colKey)
                    || visited.contains(secKey) {
                    return false
                }
                
                visited.insert(rowKey);
                visited.insert(colKey);
                visited.insert(secKey);
            }
        }
        
        return true
    }
}
