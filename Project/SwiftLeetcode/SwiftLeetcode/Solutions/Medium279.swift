//
//  Medium279.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 279. Perfect Squares
 https://leetcode.com/problems/perfect-squares/description/
 **/
import UIKit

public class Medium279: NSObject {
    // time: O(n * sqrt(n))
    public class func numSquares(_ n: Int) -> Int {
        var dp:[Int] = Array(repeating: Int.max, count: n+1)
        dp[0] = 0
        // n
        for i in 1...n {
            var j = 1
            // sqrt(n)
            while (j*j <= i) {
                dp[i] = min(dp[i], dp[i - j*j] + 1)
                j+=1
            }
        }
        
        return dp[n]
    }
}
