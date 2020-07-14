//
//  S12.swift
//  lcof
//

import Foundation

class S12 {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let h = board.count
        let w = board[0].count
        var board = board
        var wordArray = Array(word)
        for r in 0..<h {
            for c in 0..<w {
                if exist(&board, &wordArray, r, c, 0) {
                    return true
                }
            }
        }

        return false
    }

    private func exist(_ board: inout [[Character]], _ wordArray: inout [Character],
                _ row: Int, _ col: Int, _ charIndex: Int) -> Bool {
        if (row < 0 || row == board.count || col < 0 || col == board[0].count) {
            return false
        }

        if board[row][col] != wordArray[charIndex] {
            return false
        }

        if (charIndex == wordArray.count - 1) {
            return true
        }

        let t = board[row][col]
        board[row][col] = "/"

        let result = exist(&board, &wordArray, row, col + 1, charIndex + 1)
            || exist(&board, &wordArray, row, col - 1, charIndex + 1)
            || exist(&board, &wordArray, row + 1, col, charIndex + 1)
            || exist(&board, &wordArray, row - 1, col, charIndex + 1)

        board[row][col] = t

        return result
    }
}
