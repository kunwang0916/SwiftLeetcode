//
//  Medium129.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/3/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 129. Sum Root to Leaf Numbers
 https://leetcode.com/problems/sum-root-to-leaf-numbers/
 time: O(N)
 space: O(height of the tree), ave is O(logN).
 **/
import UIKit

class Medium129: NSObject {
    var sum = 0
    func sumNumbers(_ root: TreeNode?) -> Int {
        dfs(root, 0);
        return sum
    }
    
    func dfs(_ root: TreeNode?, _ curSum: Int) {
        guard let r = root else {
            return
        }
        
        let newSum = curSum * 10 + r.val
        if r.left == nil && r.right == nil {
            self.sum += newSum
        } else {
            dfs(r.left, newSum)
            dfs(r.right, newSum)
        }
    }
}
