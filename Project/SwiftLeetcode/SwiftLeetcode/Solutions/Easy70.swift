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

class Easy70: NSObject {
    func climbStairs(_ n: Int) -> Int {
        return constDP(n)
    }
    
    /**
     recursive way,
     time: O(N^k), tree
     space: O(N), call stacks
     **/
    func recursive(_ n: Int) -> Int {
        if (n <= 2) {
            return n
        }
        
        return climbStairs(n-1) + climbStairs(n-2)
    }
    
    /**
     array + dp
     time: O(N)
     space: O(N)
     **/
    func arrayDP(_ n: Int) -> Int {
        if (n <= 2) {
            return n
        }
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 0
        dp[1] = 1
        dp[2] = 2
        for i in 3...n {
            dp[i] = dp[i-1] + dp[i-2]
        }
        return dp[n]
    }
    
    /**
     const + dp
     time: O(N)
     space: O(1)
     **/
    func constDP(_ n: Int) -> Int {
        if (n <= 2) {
            return n
        }
        
        var value1 = 1
        var value2 = 2
        for i in 3...n {
            (value2, value1) = (value1 + value2, value2)
        }
        return value2
    }
}
