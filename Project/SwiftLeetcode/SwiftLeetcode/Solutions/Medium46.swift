//
//  Medium46.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/28/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 46. Permutations
 https://leetcode.com/problems/permutations/
 time: O(N!)
 space: O(N!)
 **/
import UIKit

public class Medium46: NSObject {
    var result = [[Int]]()
    
    public func permute(_ nums: [Int]) -> [[Int]] {
        var set = Set<Int>()
        var current = [Int]()
        dfs(nums, &current, &set)
        return self.result
    }
    
    func dfs(_ nums: [Int], _ current: inout [Int], _ set: inout Set<Int>) {
        if current.count == nums.count {
            self.result.append(current)
            return
        }
        
        for num in nums {
            if set.contains(num) {
                continue
            }
            current.append(num)
            set.insert(num)
            dfs(nums, &current, &set)
            current.removeLast()
            set.remove(num)
        }
    }
}
