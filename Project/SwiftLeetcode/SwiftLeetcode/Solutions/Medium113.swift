//
//  Medium113.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/28/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 113. Path Sum II
 https://leetcode.com/problems/path-sum-ii/
 time: O(N)
 space: O(Height)
 **/

import UIKit

class Medium113: NSObject {
    var result = [[Int]]()
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        let elements = [Int]()
        dfs(root, sum, elements);
        return result
    }
    
    func dfs(_ root: TreeNode?, _ sum: Int, _ path: [Int]) {
        if let r = root {
            let newSum = sum - r.val;
            var newPath = path
            newPath.append(r.val)
            if newSum == 0 && r.left == nil && r.right == nil {
                self.result.append(newPath)
            }
            dfs(r.left, newSum, newPath)
            dfs(r.right, newSum, newPath)
        }
    }
}
