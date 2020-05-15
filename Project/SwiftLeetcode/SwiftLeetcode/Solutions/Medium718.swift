//
//  Medium718.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/15/20.
//  Copyright © 2020 K W. All rights reserved.
//

import UIKit

class Medium718: NSObject {
    func findLength(_ A: [Int], _ B: [Int]) -> Int {
        let m = A.count
        let n = B.count
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        var r = 0
        for i in 0..<m {
            for j in 0..<n {
                if A[i] == B[j] {
                    dp[i+1][j+1] = dp[i][j] + 1
                    r = max(dp[i+1][j+1], r)
                }
            }
        }
        return r
    }
}
