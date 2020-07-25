//
//  S47.swift
//  lcof
//

class S47 {
    func maxValue(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count

        var dp = grid
        for c in 1..<cols {
            dp[0][c] += dp[0][c - 1]
        }

        for r in 1..<rows {
            dp[r][0] += dp[r - 1][0]
        }

        for r in 1..<rows {
            for c in 1..<cols {
                dp[r][c] += max(dp[r - 1][c], dp[r][c - 1])
            }
        }

        return dp[rows - 1][cols - 1]
    }
}
