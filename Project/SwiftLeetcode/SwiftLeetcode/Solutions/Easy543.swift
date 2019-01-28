//
//  Easy543.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/27/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/diameter-of-binary-tree
 543. Diameter of Binary Tree
 time: O(N)
 space: O(N)
 **/
import UIKit

class Easy543: NSObject {
    var result = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        _ = self.depth(root)
        return result
    }
    
    func depth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let ll = depth(root?.left)
        let rl = depth(root?.right)
        self.result = max(self.result, ll + rl)
        return max(ll, rl) + 1
    }
}
