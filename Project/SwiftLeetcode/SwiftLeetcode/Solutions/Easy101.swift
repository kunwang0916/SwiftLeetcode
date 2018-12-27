//
//  Easy101.swift
//  SwiftLeetcode
//
//  Created by roosky on 12/26/18.
//  Copyright © 2018 K W. All rights reserved.
//
/**
 https://leetcode.com/problems/symmetric-tree
 101. Symmetric Tree
 time: O(N)
 space: O(N)
 **/

import UIKit

class Easy101: NSObject {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isSymmetric(root?.left, root?.right)
    }
    
    func isSymmetric(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if (p == nil && q == nil) {
            return true
        }
        
        if (p == nil || q == nil) {
            return false
        }
        
        if (p?.val != q?.val) {
            return false
        }
        
        return isSymmetric(p?.left, q?.right) && isSymmetric(p?.right, q?.left)
    }
}
