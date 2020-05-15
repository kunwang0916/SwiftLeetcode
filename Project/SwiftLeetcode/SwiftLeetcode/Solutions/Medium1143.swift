//
//  Medium1143.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/15/20.
//  Copyright © 2020 K W. All rights reserved.
//

import Foundation
public class Medium1143: NSObject {
    public func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let l1 = text1.count
        let l2 = text2.count
        var dp = Array(repeating: Array(repeating: 0, count: l2+1), count:l1+1)
        
        let a1 = Array(text1)
        let a2 = Array(text2)
        for r in (0..<l1) {
            for c in (0..<l2) {
                if a1[r] == a2[c] {
                    dp[r+1][c+1] = dp[r][c] + 1
                } else {
                    dp[r+1][c+1] = max(dp[r][c+1], dp[r+1][c])
                }
            }
        }
        return dp[l1][l2]
    }
}
