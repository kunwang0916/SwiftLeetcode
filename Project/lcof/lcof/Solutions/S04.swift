//
//  S04.swift
//  lcof
//

import Foundation

class S04 {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        var r = matrix.count - 1
        var c = 0
        
        while ( r > -1 && c < matrix[0].count) {
            let val = matrix[r][c]
            if val == target {
                return true
            } else if val < target {
                c = c + 1
            } else {
                r = r - 1
            }
        }

        return false
    }
}
