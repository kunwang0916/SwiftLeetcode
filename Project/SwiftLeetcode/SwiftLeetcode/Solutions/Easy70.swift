//
//  Easy70.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/27/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/climbing-stairs
 70. Climbing Stairs
 **/
import UIKit

public class Easy70: NSObject {
    public class func climbStairs(_ n: Int) -> Int {
        return constDP(n)
    }
    
    /**
     recursive way,
     time: O(N^k), tree
     space: O(N), call stacks
     **/
    public class func recursive(_ n: Int) -> Int {
        if (n <= 1) {
            return 1
        }
        
        return recursive(n-1) + recursive(n-2)
    }
    
    /**
     array + dp
     time: O(N)
     space: O(N)
     **/
    public class func arrayDP(_ n: Int) -> Int {
        if (n <= 1) {
            return 1
        }
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        dp[1] = 1
        for i in 2...n {
            dp[i] = dp[i-1] + dp[i-2]
        }
        return dp[n]
    }
    
    /**
     const + dp
     time: O(N)
     space: O(1)
     **/
    public class func constDP(_ n: Int) -> Int {
        if (n <= 1) {
            return 1
        }
        
        var value1 = 1
        var value2 = 1
        for _ in 2...n {
            (value2, value1) = (value1 + value2, value2)
        }
        return value2
    }
}
