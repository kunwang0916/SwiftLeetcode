//
//  Medium130.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/20/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 130. Surrounded Regions
 https://leetcode.com/problems/surrounded-regions/
 time: O(N * M)
 space: O(N * M)
 **/
import UIKit

class Medium130: NSObject {
    func solve(_ board: inout [[Character]]) {
        if board.count == 0 || board[0].count == 0 {
            return
        }
        let deletions = buildDeletions(board)
        delete(&board, deletions)
    }
    
    private func delete(_ board: inout [[Character]], _ deletions: [[Character]]) {
        
        let rows = board.count
        let cols = board[0].count
        
        for row in 0..<rows {
            for col in 0..<cols {
                if deletions[row][col] == "O" {
                    board[row][col] = "X"
                }
            }
        }
    }
    
    private func buildDeletions(_ board: [[Character]]) -> [[Character]] {
        var deletions = board
        var queue = [[Int]]()
        
        let rows = board.count
        let cols = board[0].count
        
        for row in [0, rows - 1] {
            for col in 0..<cols {
                if deletions[row][col] == "O" {
                    queue.append([row, col])
                }
            }
        }
        
        for row in 0..<rows {
            for col in [0, cols - 1] {
                if deletions[row][col] == "O" {
                    queue.append([row, col])
                }
            }
        }
        
        while !queue.isEmpty {
            let p = queue.removeFirst()
            let (r, c) = (p[0], p[1])
            deletions[r][c] = "X"
            let neighbors = getNeighbors(rows, cols, r, c)
            for np in neighbors {
                if deletions[np[0]][np[1]] == "O" {
                    queue.append(np)
                }
            }
        }
        
        return deletions
    }
    
    private func getNeighbors(_ rows: Int, _ cols: Int, _ row: Int, _ col: Int) -> [[Int]] {
        var neighbors = [[Int]]()
        
        let offsets = [[-1, 0], [1, 0], [0, -1], [0, 1]]
        
        for offset in offsets {
            let (nr, nc) = (row + offset[0], col + offset[1])
            if isValidate(rows, cols, nr, nc) {
                neighbors.append([nr, nc])
            }
        }
        
        return neighbors
    }
    
    private func isValidate(_ rows: Int, _ cols: Int, _ row: Int, _ col: Int) -> Bool {
        return row < rows && row > -1 && col > -1 && col < cols
    }
    
}
