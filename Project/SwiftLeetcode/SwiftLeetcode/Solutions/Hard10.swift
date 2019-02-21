//
//  Hard10.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/20/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 10. Regular Expression Matching
 https://leetcode.com/problems/regular-expression-matching/
 time: O(N*M)
 space: O(N*M)
 **/
import UIKit

public class Hard10: NSObject {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let sArray = Array(s)
        let pArray = Array(p)
        var dp = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
        dp[0][0] = true
        for i in 0..<p.count {
            if pArray[i] == "*" && dp[0][i-1] {
                dp[0][i+1] = true
            }
        }
        
        for i in 0..<sArray.count {
            for j in 0..<pArray.count {
                if sArray[i] == pArray[j] || pArray[j] == "." {
                    dp[i+1][j+1] = dp[i][j];
                }
                if (pArray[j] == "*") {
                    if (pArray[j-1] != sArray[i] && pArray[j-1] != ".") {
                        dp[i+1][j+1] = dp[i+1][j-1];
                    } else {
                        dp[i+1][j+1] = (dp[i+1][j] || dp[i][j+1] || dp[i+1][j-1]);
                    }
                }
            }
        }
        
        return dp[s.count][p.count];
    }
}
