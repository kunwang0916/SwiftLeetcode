//
//  Easy100.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/same-tree/
 100. Same Tree
 Time: O(N)
 Space: O(N)
 **/
import UIKit

class Easy100: NSObject {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if (p == nil && q == nil) {
            return true
        }
        
        if (p == nil || q == nil) {
            return false
        }
        
        if (p?.val != q?.val) {
            return false
        }
        
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
