//
//  Medium47.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/28/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 47. Permutations II
 https://leetcode.com/problems/permutations-ii/
 
 time: O(n! * n)
 space: O(n! * n)
 **/
import UIKit

class Medium47: NSObject {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var used = Array(repeating:false, count: nums.count)
        var curr = [Int]()
        let sorted = nums.sorted()
        dfs(sorted, &used, &curr, &result)
        return result
    }
    
    func dfs(_ nums: [Int], _ used:inout [Bool], _ curr:inout [Int], _ result: inout[[Int]]) {
        if curr.count == nums.count {
            result.append(curr)
            return
        }
        
        for i in 0..<nums.count {
            if used[i] {
                continue
            }
            
            if i > 0 && nums[i] == nums[i-1] && !used[i-1] {
                continue
            }
            
            used[i] = true
            curr.append(nums[i])
            dfs(nums, &used, &curr, &result)
            used[i] = false
            curr.removeLast()
        }
    }
}
