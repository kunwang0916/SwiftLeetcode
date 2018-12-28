//
//  Easy62.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/27/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 https://leetcode.com/problems/unique-paths
 62. Unique Paths
 **/

import UIKit

public class Easy62: NSObject {
    // time: O(M*N)
    // space: O(M*N)
    public class func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating:Array(repeating: 0, count: m), count: n)
        for row in 0..<n {
            for col in 0..<m {
                if (row == 0 && col == 0) {
                    dp[row][col] = 1
                    continue
                }
                if (row == 0 || col == 0) {
                    dp[row][col] = 1
                    continue
                }
                
                dp[row][col] = dp[row-1][col] + dp[row][col - 1]
            }
        }
        
        return dp[n-1][m-1]
    }
}
